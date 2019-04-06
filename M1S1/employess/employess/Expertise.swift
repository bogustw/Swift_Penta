//
//  Expertise.swift
//  employess
//
//  Created by user151167 on 4/4/19.
//  Copyright © 2019 Bogus. All rights reserved.
//

import Foundation

class Expertise {
    var field: String?
    var technology: String?
    var level: String?
    
    init(from json: [String: Any]) {
        self.field = json["field"] as? String
        self.technology = json["technology"] as? String
        self.level = json["level"] as? String
    }
    
    
}

