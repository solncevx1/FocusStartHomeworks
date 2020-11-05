//
//  ThirdViewController.swift
//  Homework_3
//
//  Created by Максим Солнцев on 11/2/20.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    let myButton = UIButton()
    var buttonConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpButtonLayout()
        hideKeyboardWhenTappedAround()
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        
    }
    
    @IBAction  func enterPressed(_ sender: UIButton!) {
        view.endEditing(true)
    }
    
    
}



