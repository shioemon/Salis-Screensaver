//
//  AVPlayerItem+Video.swift
//  SalisSaver
//
//  Created by [あなたの名前]
//  Copyright © 2025 [あなたの名前]. All rights reserved.
//

import AVFoundation

extension AVPlayerItem {
    
    // Swiftの予約語を避けるため「ext」に変更
    convenience init?(video: Animation, ext: FileExtension, for type: AnyClass) {
        guard let url = Bundle(for: type).url(forResource: video.rawValue, withExtension: ext.rawValue) else { return nil }
        self.init(url: url)
    }
}
