//
//  UITextField+Extension.swift
//  Investment
//
//  Created by Thyago on 17/09/19.
//  Copyright © 2019 tcasablancas. All rights reserved.
//

import UIKit

extension UITextField {
    
    func validatedText(validationType: ValidatorType) throws -> String {
        let validator = VaildatorFactory.validatorFor(type: validationType)
        return try validator.validated(self.text!)
    }
}
