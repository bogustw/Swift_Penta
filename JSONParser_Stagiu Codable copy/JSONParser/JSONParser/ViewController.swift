//
//  ViewController.swift
//  JSONParser
//
//  Created by Isabela Claudia GROZA on 4/3/19.
//  Copyright © 2019 Isabela Claudia GROZA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
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

