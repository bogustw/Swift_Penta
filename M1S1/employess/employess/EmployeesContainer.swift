//
//  EmployeesContainer.swift
//  employess
//
//  Created by user151167 on 4/6/19.
//  Copyright © 2019 Bogus. All rights reserved.
//

import Foundation

class EmployeesContainer {
    static let shared = EmployeesContainer()
    var employeesArray: [Employee]?
    
    func fetchEmployees() {
        EmployeeJSONParser.readEmployeesFromJson { ([Employee]?) in
            self.employeesArray = employeesArray
        }
    }
    
    func add(newEmployee employee: Employee, completionHandler: () -> Void) {
        if employeesArray?.contains(where: { (employeeObject)  -> Bool in
            return (employeeObject.firstName == employee.firstName ) && (employeeObject.lastName == employee.lastName)
        }) == false {
            employeesArray?.append(employee)
        }
        completionHandler()
    }
    
    func remove(employee: Employee, completionHandler: () -> Void) {
        let employeeIndex = employeesArray?.firstIndex(where: { (employeeObject) -> Bool in
            return (employeeObject.firstName == employee.firstName) && (employeeObject.lastName == employee.lastName)
        }) ?? -1
        if employeeIndex > -1 {
            employeesArray?.remove(at: employeeIndex)
        }
        completionHandler()
    }
    
    func update(existingEmployee: Employee, with newEmployee: Employee, completionHandler: () -> Void ) {
        let employeeIndex = employeesArray?.firstIndex(where: { (employeeObject) -> Bool in
            return (employeeObject.firstName == existingEmployee.firstName) && (employeeObject.lastName == existingEmployee.lastName)
        }) ?? -1
        if employeeIndex > -1 {
            employeesArray?[employeeIndex] = newEmployee
        }
        completionHandler()
    }
}
