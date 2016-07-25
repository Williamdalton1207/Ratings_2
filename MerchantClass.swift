//
//  MerchantClass.swift
//  Ratings_2
//
//  Created by William Dalton on 7/1/16.
//  Copyright © 2016 William Dalton. All rights reserved.
//

import Foundation

class Merchant {
    let merchNbr: String
    let name: String
    let activationDate: String
    let deactivationDate: String?
    let custNbr: String
    let integrated: Bool?
    let standAlone: Bool?
    init (MerchNbr: String, Name: String
        ,ActivationDate: String, DeactivationDate: String?
        ,CustNbr: String,Integrated: Bool?, StandAlone: Bool?)
    {
        self.merchNbr = MerchNbr
        self.custNbr = CustNbr
        self.name = Name
        self.activationDate = ActivationDate
        self.deactivationDate = DeactivationDate
        self.integrated = Integrated
        self.standAlone = StandAlone
        
    }
    func deposit(startProcessingDate: String, endProcessingDate: String) -> (paidByWorldPay: Double, paidByThirdParty: Double, totalDeposit:Double, returns: Double) {
        var termID: String
        var paidByWorldpay: Double = 0.00
        var paidByThirdParty: Double = 0.00
        var totalDep: Double = 0.00
        var returns: Double = 0.00
        for i in 0...terminalData.count-1
        {
            if terminalData[i].merchNbr==merchNbr
            {
                termID=terminalData[i].termID
                for ii in 0...batchData.count-1
                {
                    if batchData[ii].termNbr==termID
                    {
                        paidByWorldpay+=batchData[ii].paidByWorldPay
                        paidByThirdParty+=batchData[ii].paidByThirdParty
                        totalDep+=batchData[ii].sales
                        returns+=batchData[ii].returns
                    }
                }
            }
            
        }
        return (paidByWorldpay,paidByThirdParty,totalDep,returns)
    }
}