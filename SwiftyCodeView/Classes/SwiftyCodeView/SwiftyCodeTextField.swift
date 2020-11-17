//
//  SwiftyCodeTextField.swift
//
//  Created by arturdev on 6/30/18.
//

import UIKit

public protocol SwiftyCodeTextFieldDelegate: class {
    func deleteBackward(sender: SwiftyCodeTextField, prevValue: String?)
}

open class SwiftyCodeTextField: UITextField {
    
    weak open var deleteDelegate: SwiftyCodeTextFieldDelegate?
    
    open override func awakeFromNib() {
        super.awakeFromNib()
        
        self.textColor = UIColor.darkGray
        self.tintColor = UIColor.darkGray
        self.font = UIFont.boldSystemFont(ofSize: 30)
        self.backgroundColor = .clear
    }

    override open func deleteBackward() {
        let prevValue = text
        super.deleteBackward()
        deleteDelegate?.deleteBackward(sender: self, prevValue: prevValue)
    }
}
