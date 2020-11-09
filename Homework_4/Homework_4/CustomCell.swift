//
//  CustomCell.swift
//  Homework_4
//
//  Created by Максим Солнцев on 11/9/20.
//

import Foundation
import UIKit

class CustomCell: UITableViewCell {
    var mainText: String?
    
    var textView: UITextView {
        let view = UITextView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.isScrollEnabled = false
        
        return view
    }
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.addSubview(textView)
        
        textView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        textView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        textView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        if let mainText = mainText {
            textView.text = mainText
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
