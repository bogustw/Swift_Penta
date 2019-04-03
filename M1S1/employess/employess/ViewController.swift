//
//  ViewController.swift
//  employess
//
//  Created by user151167 on 4/1/19.
//  Copyright © 2019 Bogus. All rights reserved.
//

import UIKit

struct Employee: Decodable{
    let firstName: String?
    let lastName: String?
    let activityArea: String?
    let employees: [Employee]

    //guard let expertise=userDict["expertise"] as?[[String:String]] => expertise
    
    init(json: [String: Any]) {
        firstName = json["firstName"] as? String ?? "undefinedName"
        lastName = json["lastName"] as? String ?? "undefinedLast"
        activityArea = json["activityArea"] as? String ?? "noActivity"
        
    }
    
}


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        guard let data = data else {return }
        
        do {
            let someEmployee = try JSONDecoder().decode(Employee.self, from: data)
            print(someEmployee.firstName)
        }
//        let data: Data;
//        guard let data  = data else { return }
//
//
//        do {
//            let json =  try? JSONSerialization.jsonObject(with: data, options:.mutableContainers ) as? [String: Any] else { return }
//            let employ = Employee(json: json)
//            print(employ.firstName)
//        } catch let jsonErr {
//            print("Error serializing json:", jsonErr)
//        }
//
        
        
        
//        let firstEmployee = Employee (firstName: "John", lastName: "Smith", activityArea: "programming")
//        print(firstEmployee)
    }


}

