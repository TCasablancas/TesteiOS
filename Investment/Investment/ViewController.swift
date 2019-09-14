//
//  ViewController.swift
//  Investment
//
//  Created by Thyago on 13/09/19.
//  Copyright © 2019 tcasablancas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            self.performSegue(withIdentifier: Constants.Segues.MAIN_PUSH, sender: nil)
        }
    }


}

