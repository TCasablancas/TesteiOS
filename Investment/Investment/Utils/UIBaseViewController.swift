//
//  UIViewController.swift
//  Investment
//
//  Created by Thyago on 16/09/19.
//  Copyright © 2019 tcasablancas. All rights reserved.
//

import UIKit

class UIBaseViewController : UIViewController {
    
        
    @IBAction func popPage(_ sender: Any? = nil) {
        self.view.endEditing(true)
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func dismissPage(_ sender: Any?) {
        self.view.endEditing(true)
        self.dismiss(animated: true, completion: nil)
    }

}
