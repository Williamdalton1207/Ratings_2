//
//  TerminalClass.swift
//  Ratings_2
//
//  Created by William Dalton on 6/29/16.
//  Copyright © 2016 William Dalton. All rights reserved.
//

import Foundation

class TerminalClass{
    let termID: String
    let merchNbr: String
    let custNbr: String
    let activationDate: String
    let deactivationDate: String?
    let commType: String
    let cutOffTime: String
    let billingMethod: String
    let integrated: Bool?
    let standAlone: Bool?
    let name: String
    
    init(TermID: String, MerchNbr: String
        ,CustNbr: String, ActivationDate: String
        ,DeactivationDate: String?, CommType: String
        ,CutOffTime: String, BillingMethod: String
        ,Integrated: Bool?, StandAlone: Bool?
        ,Name: String){
        self.termID = TermID
        self.merchNbr = MerchNbr
        self.custNbr = CustNbr
        self.activationDate = ActivationDate
        self.deactivationDate = DeactivationDate
        self.commType = CommType
        self.cutOffTime = CutOffTime
        self.billingMethod = BillingMethod
        self.integrated = Integrated
        self.standAlone = StandAlone
        self.name = Name
        
    }
}