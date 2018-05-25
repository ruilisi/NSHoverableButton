//
//  NSHoverableButton.swift
//  NSHoverableButton
//
//  Created by Jiawei Li on 25/05/2018.
//  Copyright © 2018 Rallets. All rights reserved.
//
import Foundation
import Cocoa

open class NSHoverableButton: NSButton {
    @IBInspectable public var hoveringImage: NSImage?
    @IBInspectable public var unhoveringImage: NSImage?
    
    override open func awakeFromNib() {
        super.awakeFromNib()
        let area = NSTrackingArea.init(rect: self.bounds,
                                       options: [.mouseEnteredAndExited, .inVisibleRect, .assumeInside, .activeAlways],
                                       owner: self,
                                       userInfo: nil)
        self.addTrackingArea(area)
        self.image = unhoveringImage ?? self.image ?? NSImage.init()
    }
    
    override open func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        self.addCursorRect(self.bounds, cursor: .pointingHand)
    }
    override open func mouseEntered(with event: NSEvent) {
        guard self.image == hoveringImage ?? self.image else {
            self.image = hoveringImage ?? self.image
            return
        }
    }
    
    override open func mouseExited(with event: NSEvent) {
        guard self.image == unhoveringImage ?? self.image else {
            self.image = unhoveringImage ?? self.image
            return
        }
    }
}
