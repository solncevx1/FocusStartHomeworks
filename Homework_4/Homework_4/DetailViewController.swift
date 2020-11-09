//
//  DetailViewController.swift
//  Homework_4
//
//  Created by Максим Солнцев on 11/6/20.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var shadowView: UIView!
    @IBOutlet weak var secondShadowView: UIView!
    @IBOutlet weak var firstImage: UIImageView!
    @IBOutlet weak var secondImage: UIImageView!
    
    static let identifire = String(describing: DetailViewController.self)
    var text: String?
    var myfirstImage: UIImage?
    var mysecondImage: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    func configure() {
        textLabel.text = text
        firstImage.image = myfirstImage
        secondImage.image = mysecondImage

        //MARK: - configure Image
        
        firstImage.layer.cornerRadius = 20
        shadowView.layer.shadowColor = UIColor.green.cgColor
        shadowView.layer.shadowOpacity = 1
        shadowView.layer.shadowOffset = .zero
        shadowView.layer.cornerRadius = 20
        shadowView.layer.shadowRadius = 15
        secondImage.layer.cornerRadius = 20
        secondShadowView.layer.shadowColor = UIColor.blue.cgColor
        secondShadowView.layer.shadowOpacity = 1
        secondShadowView.layer.shadowOffset = .zero
        secondShadowView.layer.cornerRadius = 20
        secondShadowView.layer.shadowRadius = 15
    }
}
