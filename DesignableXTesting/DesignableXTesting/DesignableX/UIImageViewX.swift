//
//  UIImageViewX.swift
//  003 - Onboarding Page
//
//  Created by Mark Moeykens on 1/5/17.
//  Copyright © 2017 Mark Moeykens. All rights reserved.
//

import UIKit

@IBDesignable
class UIImageViewX: UIImageView {

    // MARK: - Properties
    
    @IBInspectable public var borderColor: UIColor = UIColor.clear {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable public var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable public var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }

    @IBInspectable var pulseAfter: Double = 0.0

    // MARK: - FUNCTIONS
    
    override func draw(_ rect: CGRect) {
        self.clipsToBounds = true
    }
    
    override func awakeFromNib() {
        if pulseAfter > 0 {
            UIView.animate(withDuration: 1, delay: pulseAfter, usingSpringWithDamping: 0.4, initialSpringVelocity: 0, options: [], animations: {
                self.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
                self.transform = CGAffineTransform.identity
            }, completion: nil)
        }
    }
}
