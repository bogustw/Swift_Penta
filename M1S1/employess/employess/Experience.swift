//
//  Experience.swift
//  employess
//
//  Created by user151167 on 4/4/19.
//  Copyright © 2019 Bogus. All rights reserved.
//

import Foundation

class Experience {
    var company: String?
    var startDate: String?
    var endDate: String?
    
    init(json: [String: Any]) {
        self.company = json["company" ] as? String
        self.startDate = json["startDate"] as? String
        self.endDate = json["endDate"] as? String
        
//        self.startDate = func date(from: startDateString) -> Date?
//        self.endDate = func date(from: endDateString) -> Date?
        
        // nsdateformater
        
    }
}
