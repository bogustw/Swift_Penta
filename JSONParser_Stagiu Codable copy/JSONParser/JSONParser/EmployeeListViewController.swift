//
//  ViewController.swift
//  JSONParser
//
//  Created by Isabela Claudia GROZA on 4/3/19.
//  Copyright © 2019 Isabela Claudia GROZA. All rights reserved.
//

import UIKit

class EmployeeListViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let employeesNumber: Dictionary<String,Employee> = [
            "first" : Employee (firstName: "John", lastName: "Smith" ),
            "second" : Employee(firstName: "Elizabeth", lastName: "Taylor"),
            "third" : Employee(firstName: "Michele", lastName: "Anderson")
        ]
        let destinationViewController = segue.destination
        if let employeesDetails = destinationViewController as? EmployeesDetails {
            if let identifier = segue.identifier {
//                if let order = employeesNumber[identifier] { EmployeesDetails.show = order}
            }
        }
        
    }
    
    let backgroundImageView = UIImageView()
    
    let jsonParser = EmployeesContainer.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBackground()
        //        super.viewDidLoad()
        print(jsonParser.employeesArray ?? "No employees")
        addEmployee()
        updateEmployee()
    }
    
    @IBAction func didTapFirst(_ sender: Any) {
        
        let firstEmployeeView = self.storyboard?.instantiateViewController(withIdentifier: "EmployeesDetails") as! EmployeesDetails
        let firstEmployeeNav = UINavigationController (rootViewController: firstEmployeeView)
        self.present(firstEmployeeNav, animated: true, completion: nil)
        
        
    }
    
    //    @IBAction func didTapFirst(_ sender: Any) {
    //        selectEmployee =
    //    }
    //
    //    @IBAction func didTapOnDisplay(_ sender: Any) {
    //        selectedEmployee =
    //    }
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
    
    func addEmployee() {
        jsonParser.add(newEmployee: Employee(firstName: "Isabela", lastName: "Groza")) {
            print(jsonParser.employeesArray ?? "No employees")
        }
    }
    
    func removeEmployee() {
        jsonParser.remove(employee: Employee(firstName: "Michelle", lastName: "Anderson")) {
            print(jsonParser.employeesArray ?? "No employees")
        }
    }
    
    func updateEmployee() {
        jsonParser.update(existingEmployee: Employee(firstName: "Isabela", lastName: "Groza"), with: Employee(firstName: "Isabela Claudia", lastName: "Groza")) {
            print(jsonParser.employeesArray ?? "No employees")
        }
    }
}

