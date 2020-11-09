//
//  Model.swift
//  Homework_4
//
//  Created by Максим Солнцев on 11/6/20.
//

import Foundation
import UIKit


struct TextModel {
    let title: String
    let text: String
    let style: StyleCell
    
    static func textData() -> [Self] {
        return [
            TextModel(title: "Hello", text: "worworldld", style: .firstCell),
            TextModel(title: "HelloHelloHellelloHelloHelloHelloHelloHelloHelloHello", text: "worworldld", style: .secondCell),
            TextModel(title: "Hello", text: "worldworworldworworldworworldworworldldworworldld", style: .thirdCell),
            TextModel(title: "Hello", text: "worworworldldworworldldworldldworwororwoldldworworldldworwowodld", style: .fourCell),
            TextModel(title: "Hello", text: " ", style: .fifthCell)]
    }
}

struct ImageModel {
    let firstImage: UIImage
    let secondImage: UIImage
    
    static func imageData() -> [Self] {
        return [
            ImageModel(firstImage: UIImage(named: "test1")!, secondImage: UIImage(named: "test2")!),
            ImageModel(firstImage: UIImage(named: "test3")!, secondImage: UIImage(named: "test4")!),
            ImageModel(firstImage: UIImage(named: "test5")!, secondImage: UIImage(named: "test6")!),
            ImageModel(firstImage: UIImage(named: "test7")!, secondImage: UIImage(named: "test8")!),
            ImageModel(firstImage: UIImage(named: "test9")!, secondImage: UIImage(named: "test10")!)]
    }
}



