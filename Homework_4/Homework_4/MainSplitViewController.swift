//
//  MainSplitViewController.swift
//  Homework_4
//
//  Created by Максим Солнцев on 11/6/20.
//

import UIKit

class MainSplitViewController: UISplitViewController, UISplitViewControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        self.preferredDisplayMode = .oneBesideSecondary
    }
    
    func splitViewController(_ svc: UISplitViewController, topColumnForCollapsingToProposedTopColumn proposedTopColumn: UISplitViewController.Column) -> UISplitViewController.Column {
        return .primary
    }
    
    
}
