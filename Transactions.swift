//
//  Transactions.swift
//  Ratings_2
//
//  Created by William Dalton on 7/6/16.
//  Copyright © 2016 William Dalton. All rights reserved.
//

import Foundation

class Transactions {
    let arn: String
    let pan: String
    let poNbr: String?
    let invNbr: String?
    let tranDate: String
    let amt: Double
    let tranType: String
    init (trans: Transaction){
        self.arn = trans.arn
        self.pan = trans.pan
        self.poNbr = trans.purchOrderNbr
        self.invNbr = trans.invoiceNbr
        self.amt = trans.settledAmt
        self.tranDate = trans.authDateTime
        switch trans.tranType{
        case 16:
            self.tranType = "Sale"
        case 18:
            self.tranType = "Sale"
        case 19:
            self.tranType = "Return"
        default:
            self.tranType = "unknown"
        }
    }
}
