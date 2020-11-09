//
//  MainTableViewCell.swift
//  Homework_4
//
//  Created by Максим Солнцев on 11/6/20.
//

import UIKit




class MainTableViewCell: UITableViewCell {
    
    @IBOutlet  weak var mainLabel: UILabel!
    @IBOutlet  weak var titleLabel: UILabel!
    @IBOutlet weak var dataLabel: UILabel!
    @IBOutlet weak var titleLableTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var titleLableLeadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var mainLableTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var mainLableBottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var dataLabelBottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var mainLabelTrallingConstraint: NSLayoutConstraint!
    @IBOutlet weak var mainLabelLeadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var dateLabelTrallingConstraint: NSLayoutConstraint!
    @IBOutlet weak var dateLabelLeadinfConstraint: NSLayoutConstraint!
    @IBOutlet weak var titleLabelTrallingConstraint: NSLayoutConstraint!
}

//MARK: - Configure cells

extension MainTableViewCell {
    func firstCellConfig() {
        dateLabelLeadinfConstraint.priority = .defaultHigh
        mainLabelTrallingConstraint.priority = .defaultLow
        titleLabelTrallingConstraint.isActive = false
    }
    
    func secondCellConfig() {
        titleLabel.numberOfLines = 0
        dateLabelLeadinfConstraint.priority = .defaultHigh
        mainLabelTrallingConstraint.priority = .defaultLow
    }
    
    func thirdCellConfig() {
        dateLabelTrallingConstraint.priority = .defaultLow
    }
    
    func fourCellConfig() {
        mainLabelTrallingConstraint.priority = .defaultLow
        mainLabel.numberOfLines = 2
    }
    
    func fifthCellConfig() {
        mainLabel.isHidden = true
        dataLabel.isHidden = true
    }
    
}
