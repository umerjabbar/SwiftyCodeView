//
//  SwiftyCodeItemView.swift
//
//  Created by arturdev on 6/28/18.
//

import UIKit

open class SwiftyCodeItemView: UIView {

    @IBOutlet open weak var textField: SwiftyCodeTextField!
    
    var bottomLine = CALayer()
    
    override open func awakeFromNib() {
        super.awakeFromNib()
        textField.text = ""
        applyBorderedShadow()
        
        isUserInteractionEnabled = false
    }
    
    private func applyBorderedShadow() {
//        layer.shadowOpacity = 1
//        layer.shadowColor = UIColor(red: 227/255.0, green: 230/255.0, blue: 230/255.0, alpha: 1).cgColor
//        layer.shadowOffset = CGSize(width: 0, height: 1)
//        layer.shadowRadius = 8
//        layer.masksToBounds = false
//        layer.cornerRadius = 4
        self.backgroundColor = .clear
        
        
        
    }
    
    open override func layoutSubviews() {
        super.layoutSubviews()
        bottomLine.removeFromSuperlayer()
        bottomLine.frame = CGRect(x: 0.0, y: frame.height - 2, width: frame.width, height: 4.0)
        bottomLine.backgroundColor = UIColor.darkGray.cgColor
        bottomLine.cornerRadius = 2
        bottomLine.masksToBounds = true
        layer.addSublayer(bottomLine)
        
    }
    
    override open func becomeFirstResponder() -> Bool {
        return textField.becomeFirstResponder()
    }
    
    override open func resignFirstResponder() -> Bool {
        return textField.resignFirstResponder()
    }
}
