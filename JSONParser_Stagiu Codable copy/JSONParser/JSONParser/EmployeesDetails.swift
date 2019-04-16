//
//  EmployeesDetails.swift
//  JSONParser
//
//  Created by user151167 on 4/11/19.
//  Copyright © 2019 Isabela Claudia GROZA. All rights reserved.
//
import UIKit

class EmployeesDetails : UIViewController {
    let jsonParser = EmployeesContainer.shared

    @IBOutlet weak var EmployeeTextView: UITextView!
    let backgroundImageView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBackground()
        print(jsonParser.employeesArray ?? "No employees")
        
    }
    func setBackground() {
        view.addSubview(backgroundImageView)
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        backgroundImageView.image = UIImage(named: "beams.png")
        view.sendSubviewToBack(backgroundImageView)
    }
    
//    func textFieldEmployees(textFieldEmployees: UITextView ) -> UITextViewDelegate{
//        let delegate = textFieldEmployees.delegate(self) as UITextViewDelegate
//
//    }
//    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
//
//        dispatch_async(dispatch_get_main_queue(), { () -> Void in
//            //as! MenuTableViewCell
//            /**/
//            print("stuff")
//
//
//
//
//            cell.textLabel?.text = self.cityValue[indexPath.row];//self.menuItems[indexPath.row].city
//            //titleLab.text = menuItems[indexPath.row].days
//            cell.detailTextLabel?.text = self.inchesValue[indexPath.row]; //"\(self.menuItems[indexPath.row].inches as! Double)"
//
//
//
//
//        })
//
//        return cell
//    }
    
    
}// end of classs


