//
//  MainTableViewController.swift
//  Homework_4
//
//  Created by Максим Солнцев on 11/6/20.
//

import UIKit

class MainTableViewController: UITableViewController {
    
    let textDataArray: [TextModel] = TextModel.textData()
    let imageDataArray: [ImageModel] = ImageModel.imageData()
    var currentDateTime = Date()
    let dateFormatter = DateFormatter()

    override func viewDidLoad() {
        super.viewDidLoad()
        dateFormatter.timeStyle = .medium
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return textDataArray.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
        let mainStoryboard = UIStoryboard.init(name: "Main", bundle: nil)
        guard let detailViewController = mainStoryboard.instantiateViewController(identifier: DetailViewController.identifire) as? DetailViewController else { return }
        detailViewController.title = textDataArray[indexPath.row].title
        detailViewController.text = textDataArray[indexPath.row].text
        detailViewController.myfirstImage = imageDataArray[indexPath.row].firstImage
        detailViewController.mysecondImage = imageDataArray[indexPath.row].secondImage
        splitViewController?.showDetailViewController(detailViewController, sender: self)
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MainTableViewCell
        cell.titleLabel.text = textDataArray[indexPath.row].title
        cell.mainLabel.text = textDataArray[indexPath.row].text
        cell.dataLabel.text = "\(dateFormatter.string(from: currentDateTime))"
        
        let typeCell = textDataArray[indexPath.row]
        
        switch typeCell.style {
        
        case .firstCell:
            cell.firstCellConfig()
            return cell
        case .secondCell:
            cell.secondCellConfig()
            return cell
        case .thirdCell:
            cell.thirdCellConfig()
            return cell
        case .fourCell:
            cell.fourCellConfig()
        case .fifthCell:
            cell.fifthCellConfig()
            return cell
        }
        return cell
    }
}
