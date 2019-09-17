//
//  ContactViewController.swift
//  Investment
//
//  Created by Thyago on 16/09/19.
//  Copyright © 2019 tcasablancas. All rights reserved.
//

import UIKit
import TextFieldEffects

class ContactViewController: UIBaseViewController {
    
    
    @IBOutlet weak var tfNome: HoshiTextField!
    @IBOutlet weak var tfEmail: HoshiTextField!
    @IBOutlet weak var tfTelefone: HoshiTextField!
    
    @IBOutlet weak var btnEnviar: UIButton!
    
    
    override func viewDidLoad() {
        
        self.setupUI()
        self.setupTexts()
    }
}


extension ContactViewController : SetupUI {
    
    func setupUI() {
        
        Theme.default.mainBtnRounded(self.btnEnviar)
    }
    
    func setupTexts() {
        
        
    }
}
