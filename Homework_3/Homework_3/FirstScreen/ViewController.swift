//
//  ViewController.swift
//  Homework_3
//
//  Created by Максим Солнцев on 10/30/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var firstButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstButton.layer.cornerRadius = firstButton.frame.size.height / 2
        
        secondButton.layer.cornerRadius = 8
        
    }
    
}

