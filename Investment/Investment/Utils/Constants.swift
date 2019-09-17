//
//  Constants.swift
//  Investment
//
//  Created by Thyago on 13/09/19.
//  Copyright © 2019 tcasablancas. All rights reserved.
//

import UIKit

struct Constants {
    
    struct Segues {
        
        static let MAIN_PUSH = "MAIN_PUSH"
        static let INVESTMENT_SEGUE = "INVESTMENT_SEGUE"
        static let SHOW_CONTACT = "SHOW_CONTACT"
    }
    
    struct Colors {
        
        struct Hex {
            
            static let white = "#fff"
            static let black = "#000000"
            static let mainRed = "#da0000"
            static let lightRed = "#eb7174"
            static let darkRed = "#c80000"
            static let mainGreen = "#8dd55f"
            static let middleGray = "898989"
            static let mainGray = "#333333"
            static let lightGray = "#b1b1b1"
        }
    }
    
    struct FormatPattern {
        
        enum `Type` : Int {
            case field = 1
            case text = 2
            case image = 3
            case checkbox = 4
            case send = 5
        }
        
        enum TypeField : Int {
            
            case text = 1
            case telNumber = 2
            case email = 3
        }
    }
}
