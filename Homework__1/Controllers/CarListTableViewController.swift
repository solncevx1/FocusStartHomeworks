
//
//  CarsTableViewController.swift
//  CarsList
//
//  Created by Максим Солнцев on 9/16/20.
//  Copyright © 2020 Максим Солнцев. All rights reserved.
//

import UIKit


class CarsTableViewController: UITableViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    let picker = UIPickerView()
    var carList: [Car] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        picker.center = CGPoint(x: 200, y: 700)
        picker.delegate = self
        picker.dataSource = self
        view.addSubview(picker)
        picker.isHidden = true
        
    }
    
    @IBAction func sortByStyle(_ sender: UIBarButtonItem) {
        
        if picker.isHidden == true {
            picker.isHidden = false
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return carList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CarListTableViewCell
        let cars = carList[indexPath.row]
        cell.fullNameLabel.text = "Model: " + cars.fullCarName
        cell.YearLabel.text = "Year of produced: " + cars.yearOfProduction
        cell.carNameLabel.text = "Car number: " + cars.carNumber
        cell.bodyStyleLabel.text = "Bodystyle: " + cars.bodyStyleRawValue
        return cell
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
        let filterArray = carList.filter { $0.bodyStyleRawValue == CarBodyStyle.allCases[row].rawValue }
        carList = filterArray
        tableView.reloadData()
        picker.isHidden = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddNewCar" {
            let vc = segue.destination as! AddNewCarViewController
            vc.complition = { newCar in
                self.carList.append(newCar)
            }
        }
    }
}



