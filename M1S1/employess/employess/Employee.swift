//
//  Employee.swift
//  employess
//
//  Created by user151167 on 4/4/19.
//  Copyright © 2019 Bogus. All rights reserved.
//

import Foundation

class Employee {
    var firstName: String?
    var lastName: String?
    var activityArea: String?
    var education: [Education]?
    var expertise: [Expertise]?
    var certification: [Certification]?
    var experience: [Experience]?
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    init(from json: [String: Any]) {
        self.firstName = json["firstName"] as? String ?? "undefinedName"
        self.lastName = json["lastName"] as? String ?? "undefinedLast"
        self.activityArea = json["activityArea"] as? String ?? "noActivity"
        //json["experience"] -> array
        self.education = []
        if let educationArray = json["education"] as? [[String: Any]] {
            for jsonItem in educationArray {
                let education = Education(json: jsonItem)
                                self.education?.append(education)
            }
        }
        self.experience = []
        if let experienceArray = json["experience"] as? [[String: Any]] {
            for jsonItem in experienceArray {
                let experience = Experience(json: jsonItem)
                                self.experience?.append(experience)
            }
        }
        self.expertise = []
        if let expertiseArray = json["expertise"] as? [[String: Any]] {
            for jsonItem in expertiseArray {
                                let expertise = Expertise(from: jsonItem)
                                self.expertise?.append(expertise)
            }
        }
        self.certification = []
        if let certificationArray = json["certifications"] as? [[String: Any]] {
            for jsonItem in certificationArray {
                                let certification = Certification(from: jsonItem)
                                self.certification?.append(certification)
            }
        }
    }
}
    
extension Employee: CustomStringConvertible {
    var description: String {
            return "lastName = \(self.lastName) firstName = \(self.firstName)"
        }
}

