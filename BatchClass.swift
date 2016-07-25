//
//  BatchClass.swift
//  Ratings_2
//
//  Created by William Dalton on 6/29/16.
//  Copyright © 2016 William Dalton. All rights reserved.
//

import Foundation

class Batch {
    let batchNbr: String
    let processingDate: String
    let tranCount: Int
    let paidDate: String
    let sales: Double
    let returns: Double
    let paidByWorldPay: Double
    let paidByThirdParty: Double
    let termNbr: String
    
    init (BatchNbr: String, ProcessingDate: String
        ,TranCount: Int, PaidDate: String, TermNbr: String
        ,Sales: Double, Returns: Double
        ,PaidByWorldPay: Double, PaidByThirdParty: Double){
        
        self.batchNbr = BatchNbr
        self.processingDate = ProcessingDate
        self.tranCount = TranCount
        self.paidDate = PaidDate
        self.sales = Sales
        self.returns = Returns
        self.paidByWorldPay = PaidByWorldPay
        self.paidByThirdParty = PaidByThirdParty
        self.termNbr = TermNbr
        
    }
}