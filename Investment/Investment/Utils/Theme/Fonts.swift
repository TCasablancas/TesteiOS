//
//  Fonts.swift
//  Investment
//
//  Created by Thyago on 13/09/19.
//  Copyright © 2019 tcasablancas. All rights reserved.
//

import UIKit

enum SizeFont {
    
    case size10
    case size12
    case size14
    case size16
    case size18
    case size20
    case size22
    case size24
    
    var size: CGFloat {
        
        switch self {
        case .size10:
            return CGFloat(10)
        case .size12:
            return CGFloat(12)
        case .size14:
            return CGFloat(14)
        case .size16:
            return CGFloat(16)
        case .size18:
            return CGFloat(18)
        case .size20:
            return CGFloat(20)
        case .size22:
            return CGFloat(22)
        case .size24:
            return CGFloat(24)
        }
    }
}

public enum FontCustom: String{
    
    case dinLight = "DINPro-Light"
    case dinMedium = "DINPro-Medium"
    case dinRegular = "DINPro-Regular"
    case dinBold = "DINPro-Bold"
    case dinBlack = "DINPro-Black"
    case dinEngschrift = "DINEngscriftStd"
    
    private func scaledFont(font: UIFont) -> UIFont {
        
        if #available(iOS 11.0, *) {
            return UIFontMetrics.default.scaledFont(for: font)
        } else {
            return font
        }
    }
    
    public func font(_ size: CGFloat = 15.0) -> UIFont
    {
        let value = size * UIScreen.main.bounds.percentFontSize()
        
        switch self {
            
        case .dinLight:
            return self.scaledFont(font: UIFont.systemFont(ofSize: value, weight: .light))
        case .dinMedium:
            return self.scaledFont(font: UIFont.systemFont(ofSize: value, weight: .medium))
        case .dinRegular:
            return self.scaledFont(font: UIFont.systemFont(ofSize: value, weight: .regular))
        case .dinBold:
            return self.scaledFont(font: UIFont.systemFont(ofSize: value, weight: .bold))
        case .dinBlack:
            return self.scaledFont(font: UIFont.systemFont(ofSize: value, weight: .black))
        case .dinEngschrift:
            return self.scaledFont(font: UIFont.systemFont(ofSize: value, weight: .regular))
        }
    }
}

extension CGRect {
    
    func percentFontSize() -> CGFloat {
        
        switch self.height {
        case 480.0: //Iphone 3,4,SE => 3.5 inch
            return CGFloat(0.7)
        case 568.0: //iphone 5, 5s => 4 inch
            return CGFloat(0.8)
        case 667.0: //iphone 6, 6s => 4.7 inch
            return CGFloat(0.9)
        case 736.0: //iphone 6s+ 6+ => 5.5 inch
            return CGFloat(1.0)
        default:
            return CGFloat(1.0)
        }
        
    }
}
