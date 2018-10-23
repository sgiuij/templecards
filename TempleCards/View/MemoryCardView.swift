//
//  MemoryCardView.swift
//  TempleCards
//
//  Created by Yshanshen on 10/22/18.
//  Copyright © 2018 UE Shen. All rights reserved.
//

import UIKit

@IBDesignable
class TempleCardView : UIView {
    
    // MARK: - Constants
    
    private struct Card {
        static let backImageName = "cardback"
        static let templeImageName = "RookSquare"
    }
    
    // MARK: - Properties
    
    var isFaceUp = true
    
    // MARK: - Computed properties
    
//    @IBInspectable var isFaceUp: Bool {
//        get {
//            return temple.isFaceUp
//        }
//        set {
//            temple.isFaceUp = newValue
//        }
//    }
    
    // See slides for explanations of the uses of these computed properties
    
    //    var centerFontSize       : CGFloat { return bounds.width * 0.55 }
    var centerImageMargin    : CGFloat { return bounds.width * 0.15 }
    var cornerImageWidth     : CGFloat { return bounds.width * 0.18 }
    var cornerRadius         : CGFloat { return bounds.width * 0.05 }
    //    var cornerRankFontSize   : CGFloat { return bounds.width * 0.2 }
    //    var cornerSuitFontSize   : CGFloat { return bounds.width * 0.0666 }
    //    var cornerSuitOffset     : CGFloat { return bounds.width * 0.01 }
    //    var cornerXOffset        : CGFloat { return bounds.width * 0.0556 }
    //    var cornerYOffset        : CGFloat { return bounds.width * 0.0667 }
    //    var squareMargin         : CGFloat { return bounds.width * 0.189 }
    //    var squareStrokeWidth    : CGFloat { return bounds.width * 0.005 }
    //    var underlineOffset      : CGFloat { return bounds.width * 0.0333 }
    //    var underlineInset       : CGFloat { return bounds.width * 0.0222 }
    //    var underlineStrokeWidth : CGFloat { return bounds.width * 0.0111 }
    
    // MARK: - Initialization

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
//
//    override func prepareForInterfaceBuilder() {
//        super.prepareForInterfaceBuilder()
//        setup()
//    }
//
    private func setup() {
        backgroundColor = UIColor.clear
        isOpaque = false
    }
    
    // MARK: - Drawing
    
    override func draw(_ rect: CGRect) {
                drawBaseCard()
        
        if isFaceUp {
            drawFaceUp()
        } else {
            drawFaceDown()
        }
    }
    
    private func drawBaseCard(){
        let roundedRect = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius)
        roundedRect.addClip()
        UIColor.white.setFill()
        UIRectFill(bounds)
    }
    
//    private func drawCenterImage() {
//        guard let templeImage = UIImage(named: temple.filename) else {
//            return
//        }
//
//        let width = bounds.width - 2 * centerImageMargin
//        let templeImageRect = CGRect(x: centerImageMargin,
//                                   y: (bounds.height - width) / 2,
//                                   width: width,
//                                   height: width)
//        rookImage.draw(in: rookImageRect)
//    }
    
    //    private func drawCenterSquare() {
    //        let square = UIBezierPath()
    //        let width = bounds.width - (2.0 * squareMargin)
    //        let yOffset = (bounds.height - width) / 2
    //
    //        _ = pushContext()
    //        suitColor().setStroke()
    //        square.lineWidth = squareStrokeWidth
    //        square.move(to: CGPoint(x: squareMargin, y: yOffset))
    //        square.addLine(to: CGPoint(x: squareMargin + width, y: yOffset))
    //        square.addLine(to: CGPoint(x: squareMargin + width, y: yOffset + width))
    //        square.addLine(to: CGPoint(x: squareMargin, y: yOffset + width))
    //        square.close()
    //        square.stroke()
    //        popContext()
    //    }
    
    //    private func drawCenterText() {
    //        let font = rookCardFont(ofSize: centerFontSize)
    //        let rankText = NSAttributedString(string: "\(rank)",
    //            attributes: [
    //                .font: font,
    //                .foregroundColor: suitColor()
    //            ])
    //        var textBounds = CGRect.zero
    //
    //        textBounds.size = rankText.size()
    //        textBounds.origin = CGPoint(x: (bounds.width - textBounds.width) / 2,
    //                                    y: (bounds.height - textBounds.height) / 2)
    //        rankText.draw(in: textBounds)
    //
    //        if Card.underlinedRanks.contains(rank) {
    //            drawCenterUnderline(using: textBounds, with: font)
    //        }
    //    }
    //
    //    private func drawCornerText() {
    //        let rankFont = rookCardFont(ofSize: cornerRankFontSize)
    //        let suitFont = rookCardFont(ofSize: cornerSuitFontSize)
    //        let rankText = NSAttributedString(string: "\(rank)", attributes: [
    //            .font : rankFont,
    //            .foregroundColor : suitColor()
    //            ])
    //        let suitText = NSAttributedString(string: "\(suit)", attributes: [
    //            .font : suitFont,
    //            .foregroundColor : suitColor()
    //            ])
    //
    
    private func drawFaceDown() {
//        UIImage(named: Temple.backImageName)?.draw(in: bounds)
    }
    
    private func drawFaceUp() {
        //        if card.suit == MemoryCard.Suit.rook {
        //            drawCenterImage()
        //        } else {
        //            drawCenterText()
        //            drawCenterSquare()
        //        }
        
        //        drawCornerText()
    }
    
    // MARK: - Helpers
////
////    private func popContext() {
////        UIGraphicsGetCurrentContext()?.restoreGState()
////    }
////
////    private func pushContext() -> CGContext? {
////        let context = UIGraphicsGetCurrentContext()
////
////        context?.saveGState()
////        
////        return context
////    }
//    
//    private func pushContextAndRotateUpsideDown() {
//        let context = pushContext()
//
//        context?.translateBy(x: bounds.width, y: bounds.height)
//        context?.rotate(by: CGFloat(Double.pi))
//    }
    
}
