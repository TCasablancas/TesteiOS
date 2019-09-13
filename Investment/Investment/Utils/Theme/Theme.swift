//
//  Theme.swift
//  Investment
//
//  Created by Thyago on 13/09/19.
//  Copyright © 2019 tcasablancas. All rights reserved.
//

import UIKit

class Theme {
    
    struct `default` {
        
        //MAIN COLORS
        
        static let white = UIColor.white
        static let black = UIColor.black
        static let mainRed = UIColor(hexString: Constants.Colors.Hex.mainRed)
        static let lightRed = UIColor(hexString: Constants.Colors.Hex.lightRed)
        static let darkRed = UIColor(hexString: Constants.Colors.Hex.darkRed)
        static let mainGreen = UIColor(hexString: Constants.Colors.Hex.mainGreen)
        static let mainGray = UIColor(hexString: Constants.Colors.Hex.mainGray)
        static let lightGray = UIColor(hexString: Constants.Colors.Hex.lightGray)
        
        //BUTTON STYLE
        
        static func mainBtnRounded(_ button: UIButton, radius: CGFloat = 20) {
            
            button.borderRadiusButton(radius: radius)
            button.tintColor = Theme.default.white
            button.titleLabel?.numberOfLines = 0
            button.titleLabel?.textAlignment = .center
            button.backgroundColor = Theme.default.mainRed
            button.titleLabel?.font = FontCustom.dinRegular.font(16)
            button.titleLabel?.adjustsFontForContentSizeCategory = true
        }
    }
}
