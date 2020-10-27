//
//  ViewController.swift
//  Homework__2
//
//  Created by Максим Солнцев on 10/27/20.
//

import UIKit

class ViewController: UIViewController {
    
    let quene = DispatchQueue(label: "myQuene", attributes: .concurrent)
    
    var safeArray = ThreadSafeArray<Int>()
    var defaultArray: [Int] = []
    
    func task1() {
        
        for i in 1...1000 {
            safeArray.append(i)
        }
    }
    
    func task2() {
        
        for i in 1...1000 {
            safeArray.append(i)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        quene.async {
            self.task1()
            print(self.safeArray.count)
        }
        
        quene.async {
            self.task2()
            print(self.safeArray.count)
        }
    }
}

