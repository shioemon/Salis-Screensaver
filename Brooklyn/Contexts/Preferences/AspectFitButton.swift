//
//  AspectFitButton.swift
//  Brooklyn
//
//  Created by 島田誌音 on 2025/04/25.
//
//


import Cocoa

class AspectFitButton: NSButton {
    override func draw(_ dirtyRect: NSRect) {
        // 背景をクリア
        NSColor.clear.setFill()
        dirtyRect.fill()
        
        // 画像がある場合のみ処理
        guard let image = self.image else {
            super.draw(dirtyRect)
            return
        }
        
        // アスペクト比を維持して描画
        let imageSize = image.size
        let buttonSize = self.bounds.size
        
        // 適切なスケーリング比率を計算
        let widthRatio = buttonSize.width / imageSize.width
        let heightRatio = buttonSize.height / imageSize.height
        let ratio = min(widthRatio, heightRatio)
        
        let newSize = NSSize(width: imageSize.width * ratio, height: imageSize.height * ratio)
        let centeredRect = NSRect(
            x: (buttonSize.width - newSize.width) / 2,
            y: (buttonSize.height - newSize.height) / 2,
            width: newSize.width,
            height: newSize.height
        )
        
        // 画像を描画
        image.draw(in: centeredRect)
        
        // タイトルが空でなければ描画
        if !self.title.isEmpty {
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.alignment = .center
            
            let attributes: [NSAttributedString.Key: Any] = [
                .paragraphStyle: paragraphStyle,
                .font: self.font ?? NSFont.systemFont(ofSize: NSFont.systemFontSize),
                .foregroundColor: NSColor.textColor
            ]
            
            let titleSize = title.size(withAttributes: attributes)
            let titleRect = NSRect(
                x: (bounds.width - titleSize.width) / 2,
                y: 0,
                width: titleSize.width,
                height: titleSize.height
            )
            
            title.draw(in: titleRect, withAttributes: attributes)
        }
    }
}
