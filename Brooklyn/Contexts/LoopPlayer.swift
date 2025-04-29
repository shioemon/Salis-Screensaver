//
//  LoopPlayer.swift
//  SalisSaver
//
//  Created by Pedro Carrasco on 23/02/2019.
//  Copyright © 2019 Pedro Carrasco. All rights reserved.
//

import AVFoundation

// MARK: - LoopPlayer
final class LoopPlayer: AVQueuePlayer {
    
    // MARK: Properties
    private var isLoadingItems = false
    private var pendingAnimations: [Animation] = []
    private var pendingLoops: Int = 0
    private var pendingShouldRandomize: Bool = false
    
    // MARK: Lifecycle
    init(items: [Animation], numberOfLoops: Int, shouldRandomize: Bool) {
        // 最初のアイテムだけを即時読み込み
        let firstAnimation = items.first ?? .original
        
        if let firstItem = AVPlayerItem(video: firstAnimation, ext: .mp4, for: LoopPlayer.self) {
            super.init(items: [firstItem])
            
            // 残りは後で非同期に読み込む
            self.pendingAnimations = Array(items.dropFirst())
            self.pendingLoops = numberOfLoops
            self.pendingShouldRandomize = shouldRandomize
            
            observe()
            
            // バックグラウンドで残りをロード
            DispatchQueue.global(qos: .background).async { [weak self] in
                self?.loadRemainingItems()
            }
        } else {
            super.init()
            observe()
        }
    }
    
    override init() {
        super.init()
    }
    
    deinit {
        unobserve()
    }
    
    // 残りのアイテムを非同期に読み込む
    private func loadRemainingItems() {
        guard !isLoadingItems, !pendingAnimations.isEmpty else { return }
        
        isLoadingItems = true
        
        let animations = pendingShouldRandomize ? pendingAnimations.shuffled() : pendingAnimations
        let loadedItems = animations.reduce(into: [AVPlayerItem]()) {
            guard let item = AVPlayerItem(video: $1, ext: .mp4, for: LoopPlayer.self) else { return }
            $0.append(contentsOf: Array(copy: item, count: pendingLoops))
        }.prepareForQueue()
        
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            
            // 既存のキューに追加
            loadedItems.forEach {
                self.insert($0, after: self.items().last)
            }
            
            self.isLoadingItems = false
            self.pendingAnimations = []
        }
    }
}

// MARK: - Actions
extension LoopPlayer {
    
    func play(_ animation: Animation) {
        guard let item = AVPlayerItem(video: animation, ext: .mp4, for: LoopPlayer.self) else { return }
        actionAtItemEnd = .none
        removeAllItems()
        [item].prepareForQueue().forEach {
            insert($0, after: items().last)
        }
        actionAtItemEnd = .advance
    }
}

// MARK: - Observers
private extension LoopPlayer {
    
    func observe() {
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(playerItemDidFinish),
                                               name: NSNotification.Name.AVPlayerItemDidPlayToEndTime,
                                               object: nil)
    }
    
    func unobserve() {
        NotificationCenter.default.removeObserver(self,
                                                  name: NSNotification.Name.AVPlayerItemDidPlayToEndTime,
                                                  object: nil)
    }
    
    @objc
    func playerItemDidFinish() {
        guard let currentItemCopy = currentItem?.copy() as? AVPlayerItem else { return }
        insert(currentItemCopy, after: items().last)
    }
}

// MARK: - AVPlayerItems' Utils
fileprivate extension Array where Element: AVPlayerItem {
    
    func prepareForQueue() -> [AVPlayerItem] {
        if count == 1, let itemCopy = first?.copy() as? AVPlayerItem {
            return self + [itemCopy]
        }
        
        return self
    }
    
    init(copy item: Element, count: Int) {
        let elements = [Int](0...count).compactMap { _ in return item.copy() as? Element }
        self.init(elements)
    }
}
