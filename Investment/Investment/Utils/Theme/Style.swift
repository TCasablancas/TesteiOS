//
//  Style.swift
//  Investment
//
//  Created by Thyago on 13/09/19.
//  Copyright © 2019 tcasablancas. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
   
    
    func borderRadiusButton(radius: CGFloat) {
        
        
        if radius != 0 {
            
            self.layer.cornerRadius = radius
        }
    }
}
