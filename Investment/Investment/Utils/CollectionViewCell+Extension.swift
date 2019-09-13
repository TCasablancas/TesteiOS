//
//  CollectionViewCell+Extension.swift
//  Investment
//
//  Created by Thyago on 13/09/19.
//  Copyright © 2019 tcasablancas. All rights reserved.
//

import UIKit

extension UICollectionViewCell {
    
    class func Identifier() -> String {
        return "\(self)"
    }
    
    class func nib() -> UINib {
        return UINib(nibName: "\(self)", bundle: nil)
    }
}

extension UITableViewCell {
    
    class func nib() -> UINib {
        return UINib(nibName: "\(self)", bundle: nil)
    }
}
