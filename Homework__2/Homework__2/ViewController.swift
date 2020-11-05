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
    
    func task() {
        for i in 1...1000 {
            self.safeArray.append(i)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        quene.async {
            self.task()
        }
        quene.async {
            self.task()
        }
        print(self.safeArray.count)
    }
}

