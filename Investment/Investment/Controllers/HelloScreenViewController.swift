//
//  HelloScreenViewController.swift
//  Investment
//
//  Created by Thyago on 14/09/19.
//  Copyright © 2019 tcasablancas. All rights reserved.
//

import UIKit
import Alamofire
//import SwiftyJSON

class HelloScreenViewController: UIViewController {
    
    @IBOutlet weak var lbMain: UILabel!
    @IBOutlet weak var dataInput: UITextField!
    @IBOutlet weak var btnBehavior: UIButton!
    
    var items = [Cells]()
    let baseURL = "https://floating-mountain-50292.herokuapp.com/cells.json"
    
    override func viewDidLoad() {
        
        self.setupUI()
        self.setupTexts()
        
        self.callApi()
        
        //MARK: Keyboard Behavior Return
        self.setupKeyboardDismissRecognizer()
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        
        self.btnBehavior.addTarget(self, action: #selector(nextStep(sender:)), for: .touchUpInside)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        if let touch = touches.first {
            if touch.view != self.dataInput {
                self.dataInput.resignFirstResponder()
            }
        }
    }
}


//MARK: API Data Read and Others

extension HelloScreenViewController {
    
    func callApi() {
        
//        Alamofire.request( self.baseURL ).responseJSON { (response) -> Void in
//
//            if let value = response.result.value {
//
//                let json = JSON(value)
//                let data = json["cells"]
//
//                let message = data[0]["message"].stringValue
//                let labelName = data[1]["message"].stringValue
//
//                self.lbMain.text = "\(message)"
//                self.dataInput.placeholder = "\(labelName)"
//                
//                
//                
//                //print(data)
//            }
//        }
    }
    
    @objc func activateButton(_ textField: UITextField) {
        
        if self.dataInput.text!.isEmpty{
            
            self.btnBehavior.isUserInteractionEnabled = true
        } else {
            
            self.btnBehavior.isUserInteractionEnabled = false
        }
    }
    
    @objc func nextStep(sender: UIButton) {
        
        self.performSegue(withIdentifier: Constants.Segues.INVESTMENT_SEGUE, sender: nil)
    }
}


//MARK: Keyboard Behavior

extension HelloScreenViewController {
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    func setupKeyboardDismissRecognizer() {
        let tapRecognizer: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        
        self.view.addGestureRecognizer(tapRecognizer)
    }

    
    @objc func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y == 0 {
                self.view.frame.origin.y -= keyboardSize.height
            }
        }
    }
    
    @objc func keyboardWillHide(notification: NSNotification) {
        if self.view.frame.origin.y != 0 {
            self.view.frame.origin.y = 0
        }
    }
}

//SETUP TEXTS AND LAYOUT

extension HelloScreenViewController : SetupUI {
    
    func setupUI() {
        
        Theme.default.mainBtnRounded(self.btnBehavior)
        Theme.default.textAsListTitle(self.lbMain)
        self.dataInput.font = UIFont(name: "DINPro-Bold", size: 17)
    }
    
    func setupTexts() {
        
        self.btnBehavior.setTitle("Continuar", for: .normal)
        
    }
}
