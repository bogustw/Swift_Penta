//
//  Certification.swift
//  employess
//
//  Created by user151167 on 4/4/19.
//  Copyright © 2019 Bogus. All rights reserved.
//

import Foundation

class Certification {
    var title: String?
    var certificationDate: String?
    
    init(from json: [String: Any] ) {
        self.title = json["title"] as? String
        self.certificationDate = json["certificationDate"] as? String
        
    }
    
}
