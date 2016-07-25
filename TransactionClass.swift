//
//  TransactionClass.swift
//  Ratings_2
//
//  Created by William Dalton on 6/29/16.
//  Copyright © 2016 William Dalton. All rights reserved.
//

import Foundation

class Transaction {
    let arn: String
    let custNbr: String
    let merchNbr: String
    let termID: String
    let processDate: String
    let batchNbr: String
    let seqNbr: Int
    let busType: Int
    let cardType: Int
    let tranType: Int
    let authOnly: Bool
    let authDateTime: String
    let settledAmt: Double
    let cashBackAmt: Double
    let pan: String
    let authCode: String
    let posEntryMode: String
    let deviceID: String
    let cvmCode: String
    let grossAmtPaid: Double
    var paidDate: String
    let bankAcct: String
    let bankABA: String
    let processFee: Float
    let tranDiscFee: Float
    let cardQualType: String
    let tieredQualType: String
    let purchOrderNbr: String
    let invoiceNbr: String
    let downGradeReason: String
    let rejected: Bool
    
    init(ARN: String,
     CustNbr: String,
    MerchNbr: String,
    TermID: String,
    ProcessDate: String,
    BatchNbr: String,
    SeqNbr: Int,
    BusType: Int,
    CardType: Int,
    TranType: Int,
    AuthOnly: Bool,
    AuthDateTime: String,
    SettledAmt: Double,
    CashBackAmt: Double,
    Pan: String,
    AuthCode: String,
    PosEntryMode: String,
    DeviceID: String,
    CvmCode: String,
    GrossAmtPaid: Double,
    PaidDate: String,
    BankAcct: String,
    BankABA: String,
    ProcessFee: Float,
    TranDiscFee: Float,
    CardQualType: String,
    TieredQualType: String,
    PurchOrderNbr: String,
    InvoiceNbr: String,
    DownGradeReason: String,
    Rejected: Bool){
        
        self.arn = ARN
        self.custNbr = CustNbr
        self.merchNbr = MerchNbr
        self.termID = TermID
        self.processDate = ProcessDate
        self.batchNbr = BatchNbr
        self.seqNbr = SeqNbr
        self.busType = BusType
        self.cardType = CardType
        self.tranType = TranType
        self.authOnly = AuthOnly
        self.authDateTime = AuthDateTime
        self.settledAmt = SettledAmt
        self.cashBackAmt = CashBackAmt
        self.pan = Pan
        self.authCode = AuthCode
        self.posEntryMode = PosEntryMode
        self.deviceID = DeviceID
        self.cvmCode = CvmCode
        self.grossAmtPaid = GrossAmtPaid
        self.paidDate = PaidDate
        self.bankAcct = BankAcct
        self.bankABA = BankABA
        self.processFee = ProcessFee
        self.tranDiscFee = TranDiscFee
        self.cardQualType = CardQualType
        self.tieredQualType = TieredQualType
        self.purchOrderNbr = PurchOrderNbr
        self.invoiceNbr = InvoiceNbr
        self.downGradeReason = DownGradeReason
        self.rejected = Rejected
        
    }
    
}