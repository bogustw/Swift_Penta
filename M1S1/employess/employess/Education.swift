//
//  Education.swift
//  employess
//
//  Created by user151167 on 4/4/19.
//  Copyright © 2019 Bogus. All rights reserved.
//

import Foundation

class Education {
    var institution: String?
    var degree: String?
    var startYear: Int?
    var endYear: Int?
    
    init(json: [String: Any] ) {
        self.institution = json["institution"] as? String
        self.degree = json["degree"] as? String
        self.startYear =  json["startYear"] as? Int
        self.endYear = json["endYear"] as? Int
    }
    
}
