//
//  LoginViewController.swift
//  Investment
//
//  Created by Thyago on 13/09/19.
//  Copyright © 2019 tcasablancas. All rights reserved.
//

import UIKit
import TextFieldEffects

class LoginViewController: UIViewController {
    
    @IBOutlet weak var lbTitle: UILabel!
    @IBOutlet weak var formView: UIStackView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var fldLogin: HoshiTextField!
    @IBOutlet weak var fldPassword: HoshiTextField!
    @IBOutlet weak var btnLogin: UIButton!
    
    var dataSource = [Cells]()
    
    
    override func viewDidLoad() {
        
        self.setupUI()
        self.setupTexts()
        
        let placeholder = HoshiTextField()
        placeholder.borderActiveColor = Theme.default.mainRed
        placeholder.borderInactiveColor = Theme.default.lightGray
        placeholder.placeholderColor = Theme.default.mainGray
        
        self.view.addSubview(placeholder)
        
    }
}


extension LoginViewController {
    
    
}

extension LoginViewController : SetupUI {
    
    func setupUI() {
        
        Theme.default.mainBtnRounded(self.btnLogin, radius: 25)
    }
    
    func setupTexts() {
        
        self.btnLogin.setTitle("Entrar", for: .normal)
        self.lbTitle.text = "\(dataSource)"
        
    }
}
