//
//  SAButton.swift
//  JSONParser
//
//  Created by user151167 on 4/9/19.
//  Copyright © 2019 Isabela Claudia GROZA. All rights reserved.
//
import UIKit
import Foundation

class SAButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    
    private func setupButton() {
        backgroundColor = UIColor(named: "coolblue")
        titleLabel?.font = UIFont(name: "AvenirNext-DemiBold", size: 18)
        layer.cornerRadius = frame.size.height/2
        setTitleColor(.white, for: .normal)
    }
}

