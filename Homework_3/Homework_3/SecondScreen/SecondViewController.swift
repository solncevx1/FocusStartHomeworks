//
//  SecondViewController.swift
//  Homework_3
//
//  Created by Максим Солнцев on 11/2/20.
//

import UIKit

class SecondViewController: UIViewController {
    
    private var sharedConstraints: [NSLayoutConstraint] = []
    private var compactConstraints: [NSLayoutConstraint] = []
    private var regularConstraints: [NSLayoutConstraint] = []
    
    private let myScrollView = UIScrollView()
    private let myImage = UIImageView()
    private let titleLabel = UILabel()
    private let textLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViewAppearances()
        setupViewLayout()
        changeViewLayout(traitCollection: traitCollection)
        
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        
        changeViewLayout(traitCollection: traitCollection)
    }
}
private extension SecondViewController {
    func setupViewAppearances() {
        setupImageViewAppearances()
        setupTitleLabelApperances()
        setupTextLabelAppearances()
    }
    
    func setupImageViewAppearances() {
        myImage.image = UIImage(named: "test")
        myImage.contentMode = .scaleAspectFill
    }
    
    func setupTitleLabelApperances() {
        titleLabel.font = UIFont.systemFont(ofSize: 22)
        titleLabel.text = "TEST TEST"
        
    }
    
    func setupTextLabelAppearances() {
        textLabel.numberOfLines = 0
        textLabel.text = "TeTextTextTextTextTextxtTeTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTexttTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTexttTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTexttTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTexttTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTexextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTexttTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTexttTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTexttTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTexttTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTexextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTexttTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTexttTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTexttTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTexttTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTexttTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTexttTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTexttTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTexttTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextxtTextTextTextTextTextTextTextTextTextxt"
    }
    
}

private extension SecondViewController {
    
    func changeViewLayout(traitCollection: UITraitCollection) {
        switch(traitCollection.horizontalSizeClass, traitCollection.verticalSizeClass) {
        case (.compact, .regular):
            NSLayoutConstraint.deactivate(regularConstraints)
            NSLayoutConstraint.activate(compactConstraints)
        default:
            NSLayoutConstraint.deactivate(compactConstraints)
            NSLayoutConstraint.activate(regularConstraints)
        }
    }
    
    func setupViewLayout() {
        setupSharedLayout()
        setupCompactLayout()
        setupRegularLayout()
    }
    
    func setupSharedLayout() {
        setupScrollViewLayout()
        setupImageLayout()
        setupTextLabelLayout()
        setupTitleLabelLayout()
        
        
        NSLayoutConstraint.activate(sharedConstraints)
    }
    
    func setupScrollViewLayout() {
        view.addSubview(myScrollView)
        myScrollView.translatesAutoresizingMaskIntoConstraints = false
        
        sharedConstraints.append(contentsOf: [
                                    myScrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
                                    myScrollView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
                                    myScrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
                                    myScrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)])
    }
    
    func setupImageLayout() {
        myScrollView.addSubview(myImage)
        myImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
                                        myImage.topAnchor.constraint(equalTo: myScrollView.topAnchor),
                                        myImage.heightAnchor.constraint(equalToConstant: 300)])
    }
    
    func setupTitleLabelLayout() {
        myScrollView.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
                                        titleLabel.topAnchor.constraint(equalTo: myImage.bottomAnchor, constant: 40),
                                        titleLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor, constant: 1)])
    }
    
    func setupTextLabelLayout() {
        myScrollView.addSubview(textLabel)
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            textLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -15),
            textLabel.bottomAnchor.constraint(equalTo: myScrollView.bottomAnchor)
            
        ])
    }
}

private extension SecondViewController {
    func setupCompactLayout() {
        setupImageCompactLayout()
        setupTextLabelCompactLayout()
    }
    
    func setupImageCompactLayout() {
        
        compactConstraints.append(contentsOf:[
                                    myImage.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
                                    myImage.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor)])
    }
    
    func setupTextLabelCompactLayout() {
        compactConstraints.append(contentsOf:[
                                    textLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
                                    textLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 30)])
    }
}

private extension SecondViewController {
    func setupRegularLayout() {
        setupImageRegularLayout()
        setupTextLabelRegularLayout()
        setupTitleLabelRegularLayout()
    }
    
    func setupImageRegularLayout() {
        
        regularConstraints.append(contentsOf:[
                                    myImage.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
                                    myImage.trailingAnchor.constraint(equalTo: titleLabel.leadingAnchor, constant: -30),
                                    myImage.widthAnchor.constraint(equalToConstant: 300)])
    }
    
    func setupTitleLabelRegularLayout() {
        regularConstraints.append(contentsOf:[
                                    titleLabel.topAnchor.constraint(equalTo: myImage.centerYAnchor, constant: 0)])
    }
    
    func setupTextLabelRegularLayout() {
        regularConstraints.append(contentsOf:[
                                    textLabel.topAnchor.constraint(equalTo: myImage.bottomAnchor, constant: 40),
                                    textLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor)])
    }
}
