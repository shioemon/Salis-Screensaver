//
//  SalisSaverView.swift
//  SalisSaver
//
//  Created by Pedro Carrasco on 30/10/2018.
//  Copyright © 2018 Pedro Carrasco. All rights reserved.
//

import Foundation
import ScreenSaver
import AVKit

// MARK: - SalisSaverView
final class SalisSaverView: ScreenSaverView {

    // MARK: Local Typealias
    typealias Static = SalisSaverView
    
    // MARK: Constant
    private enum Constant {
        static let secondPerFrame = 1.0 / 30.0
        static let backgroundColor = NSColor(red: 0.00, green: 0.01, blue: 0.00, alpha:1.0)
    }
    
    // MARK: Outlets
    private let videoLayer = AVPlayerLayer()
    
    // MARK: Properties
    private let manager = SalisSaverManager(mode: .screensaver)
    private lazy var preferences = PreferencesWindowController(windowNibName: PreferencesWindowController.identifier)

    // MARK: Initialization
    required init?(coder decoder: NSCoder) {
        super.init(coder: decoder)
        animationTimeInterval = Constant.secondPerFrame
        configure()
    }
    
    override init?(frame: NSRect, isPreview: Bool) {
        super.init(frame: frame, isPreview: isPreview)
        animationTimeInterval = Constant.secondPerFrame
        configure()
    }
}

// MARK: - Lifecycle
extension SalisSaverView {
    
    override func startAnimation() {
        super.startAnimation()
        manager.player.play()
    }
    
    override func stopAnimation() {
        super.stopAnimation()
        manager.player.pause()
    }
}

// MARK: - Configuration
private extension SalisSaverView {
    
    func configure() {
        defineLayer()
        setupLayer()
    }
    
    func defineLayer() {
        wantsLayer = true
        defineVideoLayer()
        layer = videoLayer
    }
    
    func setupLayer() {
        videoLayer.player = manager.player
        
        // macOS SequoiaでのUI表示問題対策
        if let player = videoLayer.player {
            // 外部再生を無効化してアップルロゴのUIを抑制
            player.allowsExternalPlayback = false
        }
    }
}

// MARK: - Define Layers
private extension SalisSaverView {

    func defineVideoLayer() {
        // 基本的なフレーム設定
        videoLayer.frame = bounds
        
        // 位置問題修正：アンカーポイントと位置を明示的に設定
        videoLayer.position = CGPoint(x: bounds.width/2, y: bounds.height/2)
        videoLayer.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        
        // レイヤーのプロパティを設定
        videoLayer.autoresizingMask = [.layerWidthSizable, .layerHeightSizable]
        videoLayer.needsDisplayOnBoundsChange = true
        videoLayer.contentsGravity = .resizeAspect
        videoLayer.backgroundColor = Constant.backgroundColor.cgColor
        
        // ホットコーナーからの起動で位置ズレが起きないよう、サイズを明示
        if let currentScreen = NSScreen.screens.first(where: { $0.frame.contains(self.frame.origin) }) ?? NSScreen.main {
            videoLayer.frame = CGRect(x: 0, y: 0, width: currentScreen.frame.width, height: currentScreen.frame.height)
        }
    }
}

// MARK: - Preferences
extension SalisSaverView {

    override var hasConfigureSheet: Bool {
        return true
    }

    override var configureSheet: NSWindow? {
        return preferences.window
    }
}
