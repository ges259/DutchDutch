//
//  UIButton+Ext.swift
//  DutchDutch
//
//  Created by 계은성 on 2023/12/25.
//

import UIKit

extension UIButton {
    static func btnWithImg(image: UIImage?,
                           tintColor: UIColor = .black,
                           backgroundColor: UIColor? = UIColor.clear)
    -> UIButton {
        let btn = UIButton(type: .system)
            btn.setImage(image, for: .normal)
            btn.tintColor = tintColor
            btn.backgroundColor = backgroundColor
        return btn
    }
    
    static func btnWithTitle(title: String,
                             titleColor: UIColor = UIColor.black,
                             font: UIFont,
                             backgroundColor: UIColor)
    -> UIButton {
        let btn = UIButton(type: .system)
        btn.setTitle(title, for: .normal)
        btn.setTitleColor(titleColor, for: .normal)
        btn.titleLabel?.font = font
        btn.backgroundColor = backgroundColor
        
        // MARK: - Fix
        btn.setTitleColor(.red, for: .highlighted)
        return btn
    }
}
