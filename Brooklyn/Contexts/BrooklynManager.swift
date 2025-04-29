//
//  SalisSaverManager.swift
//  ShionSaver
//
//  Created by Pedro Carrasco on 21/02/2019.
//  Modified for macOS Sequoia compatibility
//

import Foundation
import ScreenSaver
import AVKit

// MARK: SalisSaverManager
final class SalisSaverManager {
    
    private enum Constant {
        // バンドルIDを更新
        static let bundleId = "com.shion.shionsaver"
        static let versionKey = "CFBundleShortVersionString"
    }
    
    // MARK: Properties
    let availableAnimations: [Animation]
    let player: LoopPlayer
    
    // MARK: Private Set Properties
    private (set) var selectedAnimations: [Animation]
    private (set) var numberOfLoops: Int
    private (set) var hasRandomOrder: Bool
    
    // MARK: Init
    init(mode: DisplayMode) {
        self.availableAnimations = Animation.allCases
        self.selectedAnimations = Database.standard.selectedAnimations
        self.numberOfLoops = Database.standard.numberOfLoops
        self.hasRandomOrder = Database.standard.hasRandomOrder
        
        switch mode {
        case .screensaver:
            self.player = LoopPlayer(items: selectedAnimations,
                                     numberOfLoops: numberOfLoops,
                                     shouldRandomize: hasRandomOrder)
        case .preferences:
            self.player = LoopPlayer(items: [selectedAnimations.first ?? .original],
                                     numberOfLoops: 0,
                                     shouldRandomize: false)
        }
    }
    
    lazy var currentVersion: String = {
        // シオンセーバーのスクリーンセーバー自体から実行されている場合
        if let screensaverBundle = Bundle(identifier: Constant.bundleId) {
            return screensaverBundle.infoDictionary?[Constant.versionKey] as? String ?? ""
        } else {
            // Canvasから実行されている場合は、そこからバージョン番号を返す
            return Bundle.main.infoDictionary?[Constant.versionKey] as? String ?? ""
        }
    }()
}

// MARK: - Animations
extension SalisSaverManager {
    
    func toogle(_ animation: Animation) {
        var animations = selectedAnimations
        if animations.contains(animation) {
            animations.removeAll { $0 == animation }
        } else {
            animations.append(animation)
        }
        
        selectedAnimations = animations
        Database.standard.set(animations: selectedAnimations)
    }
}

// MARK: - Preferences
extension SalisSaverManager {
    
    func setNumberOfLoops(to numberOfLoops: Int) {
        self.numberOfLoops = numberOfLoops
        Database.standard.set(numberOfLoops: numberOfLoops)
    }
    
    func toogleHasRandomOrder() {
        hasRandomOrder.toggle()
        Database.standard.set(hasRandomOrder: hasRandomOrder)
    }
}
