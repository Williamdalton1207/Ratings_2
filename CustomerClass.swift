//
//  CustomerClass.swift
//  Ratings_2
//
//  Created by William Dalton on 6/29/16.
//  Copyright © 2016 William Dalton. All rights reserved.
//

import Foundation

class Customer {
    let custNbr: String
    let name: String
    let activationDate: String
    let deactivationDate: String?
    let sensitivityLevel: Int
    let velocityEnabled: Bool?
    let integrated: Bool?
    let standAlone: Bool?
    init (CustNbr: String, Name: String
        ,ActivationDate: String, DeactivationDate: String?
        ,SensitivityLevel: Int, VelocityEnabled: Bool?
        ,Integrated: Bool?, StandAlone: Bool?
        ){
        self.custNbr = CustNbr
        self.name = Name
        self.activationDate = ActivationDate
        self.deactivationDate = DeactivationDate
        self.sensitivityLevel = SensitivityLevel
        self.velocityEnabled = VelocityEnabled
        self.integrated = Integrated
        self.standAlone = StandAlone
        
    }
    
    
}


