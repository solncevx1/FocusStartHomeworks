//
//  CarModel.swift
//  Homework__1
//
//  Created by Максим Солнцев on 10/26/20.
//

import Foundation

struct Car {
    
     var nameManufacturer = String()
     var nameModel = String()
     var yearOfProduction = String()
     var carNumber = String()
     var fullCarName: String {
       return nameManufacturer + " " + nameModel
   }
     var bodyStyleRawValue = String()
     var bodyStyle: CarBodyStyle? {
        get {return CarBodyStyle(rawValue: bodyStyleRawValue)}
        set {bodyStyleRawValue = newValue!.rawValue}
    }
}

