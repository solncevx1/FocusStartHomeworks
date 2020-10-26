
//
//  AddNewCarViewController.swift
//  CarsList
//
//  Created by Максим Солнцев on 9/16/20.
//  Copyright © 2020 Максим Солнцев. All rights reserved.
//

import UIKit




class AddNewCarViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {
    
    @IBOutlet weak var manufacturerTextField: UITextField!
    @IBOutlet weak var modelNameTextField: UITextField!
    @IBOutlet weak var yearOfProductionTextField: UITextField!
    @IBOutlet weak var bodyStyleTextField: UITextField!
    @IBOutlet weak var carNumberTextField: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    
    
    var newCar = Car()
    let picker = UIPickerView()
    var complition: (( inout Car) -> ())?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        picker.delegate = self
        picker.dataSource = self
        modelNameTextField.delegate = self
        manufacturerTextField.delegate = self
        carNumberTextField.delegate = self
        yearOfProductionTextField.delegate = self
        bodyStyleTextField.delegate = self
        yearOfProductionTextField.keyboardType = .numberPad
        carNumberTextField.keyboardType = .numberPad
        bodyStyleTextField.inputView = picker
        errorLabel.isHidden = true
        carNumberTextField.text = newCar.carNumber
        manufacturerTextField.text = newCar.nameManufacturer
        modelNameTextField.text = newCar.nameModel
        yearOfProductionTextField.text = newCar.yearOfProduction
        bodyStyleTextField.text = newCar.bodyStyleRawValue
    }
    
    func addNewCar() {
        
        newCar.nameModel = modelNameTextField.text!
        newCar.nameManufacturer = manufacturerTextField.text!
        newCar.yearOfProduction = yearOfProductionTextField.text!
        newCar.carNumber = carNumberTextField.text!
        switch bodyStyleTextField.text {
        case "Coupe":
            newCar.bodyStyle = .Coupe
        case "Hatchback":
            newCar.bodyStyle = .Hatchback
        case "Sedan":
            newCar.bodyStyle = .Sedan
        default:
            bodyStyleTextField.text = "Unknowed body style"
        }
    }
    
    func checkValid() -> String? {
        
        if yearOfProductionTextField.text == "" {
            yearOfProductionTextField.text = " - "
        }
        if manufacturerTextField.text == "" ||
            modelNameTextField.text == "" ||
            bodyStyleTextField.text == "" {
            
            return "Please fill in all fiels!"
        }
        return nil
    }
    
    @IBAction func okPressed(_ sender: UIButton) {
        if checkValid() != nil {
            errorLabel.text = checkValid()
            errorLabel.isHidden = false
        } else {
            addNewCar()
            complition?(&newCar)
            navigationController?.popViewController(animated: true)
        }
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return CarBodyStyle.allCases.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return CarBodyStyle.allCases[row].rawValue
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        bodyStyleTextField.text = CarBodyStyle.allCases[row].rawValue
        bodyStyleTextField.resignFirstResponder()
    }
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        if textField.text == "" {
            return true
        } else {
            return false
        }
    }
}
