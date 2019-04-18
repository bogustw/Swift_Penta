//
//  Employee.swift
//  JSONParser
//
//  Created by Isabela Claudia GROZA on 4/3/19.
//  Copyright © 2019 Isabela Claudia GROZA. All rights reserved.
//

import Foundation

class Employee: Codable {
    
    var firstName: String?
    var lastName: String?
    var activityArea: String?
    var education: [Education]
    var experience: [Experience]
    var expertise: [Expertise]?
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.education = [Education]()
        self.experience = [Experience]()
    }

}

extension Employee: CustomStringConvertible {
    var description: String {
        return "Employee: \(firstName ?? "") \(lastName ?? "") \(activityArea ?? "No ") \(education) \(expertise) \(experience)"
    }
}
