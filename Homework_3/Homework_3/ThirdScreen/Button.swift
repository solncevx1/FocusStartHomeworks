//
//  Button.swift
//  Homework_3
//
//  Created by Максим Солнцев on 11/3/20.
//

import Foundation
import UIKit

extension ThirdViewController {
 
    func setUpButtonLayout() {
        view.addSubview(myButton)
        myButton.backgroundColor = .black
        myButton.setTitle("Enter", for: .normal)
        myButton.translatesAutoresizingMaskIntoConstraints = false
        myButton.addTarget(self, action: #selector(enterPressed(_:)), for: .touchUpInside)
        
        
        myButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        myButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        myButton.widthAnchor.constraint(equalToConstant: 150).isActive = true
        buttonConstraint = myButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -100)
        buttonConstraint.isActive = true
        
        
//        NSLayoutConstraint.activate([
//            NSLayoutConstraint(item: myButton, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 150),
//            NSLayoutConstraint(item: myButton, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 50),
//            NSLayoutConstraint(item: myButton, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1, constant: -100),
//            NSLayoutConstraint(item: myButton, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0)])
    }
}


