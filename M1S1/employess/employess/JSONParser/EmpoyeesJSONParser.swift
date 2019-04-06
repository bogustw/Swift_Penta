//
//  EmpoyeesJSONParser.swift
//  employess
//
//  Created by user151167 on 4/4/19.
//  Copyright © 2019 Bogus. All rights reserved.
//

import Foundation

class EmployeeJSONParser {
    static func readEmployeesFromJson(completionHandler: @escaping([Employee]?) -> Void) {
        guard let JSONArray = EmployeeJSONParser.employeesJSONResultFromFile() else {
            completionHandler(nil)
            return
        }
        var employeesArray = [Employee]()
        for json in JSONArray {
            let employee = Employee( from: json)
            print(employee.description)
            employeesArray.append(employee) 
        }
        completionHandler(employeesArray)
    }
    
    static func employeesJSONResultFromFile() -> [[String: Any]]? {
        guard let path = Bundle.main.path(forResource: "employees", ofType: "json") else {return nil }
        do {
            let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
            let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
            return jsonResult as? [[String: Any]]
            
        } catch {
            print(error.localizedDescription)
            
        }
        return  nil
    }
}
