//
//  RoundButton.swift
//  Work Smart
//
//  Created by Will Langas on 2/11/19.
//  Copyright © 2019 Will Langas. All rights reserved.
//

import Foundation

import UIKit

@IBDesignable class RoundButton: UIButton {
    
    @IBInspectable var cornerRadius: CGFloat = 15 {
        didSet {
            refreshCorners(value: cornerRadius)
        }
    }
    
    func refreshCorners(value: CGFloat) {
        layer.cornerRadius = value
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        sharedInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        sharedInit()
    }
    
    override func prepareForInterfaceBuilder() {
        sharedInit()
    }
    
    func sharedInit() {
        refreshCorners(value: cornerRadius)
    }
}
