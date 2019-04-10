//
//  JSONParser.swift
//  JSONParser
//
//  Created by Isabela Claudia GROZA on 4/3/19.
//  Copyright © 2019 Isabela Claudia GROZA. All rights reserved.
//

import Foundation

class EmployeesJSONParser {
    
    static func employeesResultFromFile() -> [Employee]? {
        guard let path = Bundle.main.path(forResource: "employees", ofType: "json") else { return nil }
        do {
            let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
            let empArray = try JSONDecoder().decode([Employee].self, from: data)
            return empArray
        } catch {
            print(error.localizedDescription)
        }
        return nil
    }
    
}
