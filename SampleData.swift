//
//  SampleData.swift
//  Ratings_2
//
//  Created by William Dalton on 6/24/16.
//  Copyright © 2016 William Dalton. All rights reserved.
//

import Foundation
//Set up sample data

let playersData = [
    Player(name:"Bill Evans", game:"Tic-Tac-Toe", rating: 4),
    Player(name: "Oscar Peterson", game: "Spin the Bottle", rating: 5),
    Player(name: "Dave Brubeck", game: "Texas Hold 'em Poker", rating: 2),
    Player(name: "William Dalton", game: "Soccer", rating: 5),
    Player(name: "Ashley Yisrael", game:"Looking Stylish", rating: 5)]

let customerData = [
    Customer(CustNbr: "Cust123456",Name: "Bill Evans",ActivationDate: "1/1/2016",DeactivationDate: nil,SensitivityLevel: 9,VelocityEnabled: true,Integrated: true,StandAlone: false),
    Customer(CustNbr: "Cust987654",Name: "Oscar Peterson",ActivationDate: "1/1/2016",DeactivationDate: nil,SensitivityLevel: 9,VelocityEnabled: true,Integrated: true,StandAlone: false),
    Customer(CustNbr: "Cust111111",Name: "Dave Brubeck",ActivationDate: "1/1/2016",DeactivationDate: nil,SensitivityLevel: 9,VelocityEnabled: true,Integrated: true,StandAlone: false)
]

let merchantData = [
    Merchant(MerchNbr: "MID123456789155", Name: "Bill Evans #1", ActivationDate: "1/1/2016", DeactivationDate: nil, CustNbr: "Cust123456", Integrated: true, StandAlone: nil),
        Merchant(MerchNbr: "MID123456789123", Name: "Bill Evans #2", ActivationDate: "1/1/2016", DeactivationDate: nil, CustNbr: "Cust123456", Integrated: true, StandAlone: nil),
        Merchant(MerchNbr: "MID456789123466", Name: "Bill Evans #3", ActivationDate: "1/1/2016", DeactivationDate: nil, CustNbr: "Cust123456", Integrated: true, StandAlone: nil),
        Merchant(MerchNbr: "MID456789123477", Name: "Oscar Peterson #1123", ActivationDate: "1/1/2016", DeactivationDate: nil, CustNbr: "Cust987654", Integrated: true, StandAlone: nil),
        Merchant(MerchNbr: "MID456789123488", Name: "Oscar Peterson #1999", ActivationDate: "1/1/2016", DeactivationDate: nil, CustNbr: "Cust987654", Integrated: true, StandAlone: nil),
        Merchant(MerchNbr: "MID456789123499", Name: "Oscar Peterson #9991", ActivationDate: "1/1/2016", DeactivationDate: nil, CustNbr: "Cust987654", Integrated: true, StandAlone: nil),
        Merchant(MerchNbr: "MID456789123100", Name: "Dave Brubeck Jazz Club", ActivationDate: "1/1/2016", DeactivationDate: nil, CustNbr: "Cust111111", Integrated: true, StandAlone: nil),
        Merchant(MerchNbr: "MID456789123111", Name: "Dave Brubeck Music Store", ActivationDate: "1/1/2016", DeactivationDate: nil, CustNbr: "Cust111111", Integrated: true, StandAlone: nil),
        Merchant(MerchNbr: "MID456789123122", Name: "Dave Brubeck 4 5 Time", ActivationDate: "1/1/2016", DeactivationDate: nil, CustNbr: "Cust111111", Integrated: true, StandAlone: nil),
        Merchant(MerchNbr: "MID456789123133", Name: "Dave Brubeck rondelo", ActivationDate: "1/1/2016", DeactivationDate: nil, CustNbr: "Cust111111", Integrated: true, StandAlone: nil),
        Merchant(MerchNbr: "MID456789123144", Name: "Dave Brubeck Take 5", ActivationDate: "1/1/2016", DeactivationDate: nil, CustNbr: "Cust111111", Integrated: true, StandAlone: nil),
]

let terminalData = [
TerminalClass(TermID: "Term123456", MerchNbr: "MID123456789155", CustNbr: "Cust123456", ActivationDate: "1/1/2016", DeactivationDate: nil, CommType: "1", CutOffTime: "0900", BillingMethod: "1", Integrated: true, StandAlone: false, Name: "Front Door"),
TerminalClass(TermID: "term123455", MerchNbr: "MID123456789155", CustNbr: "Cust123456", ActivationDate: "1/1/2016", DeactivationDate: nil, CommType: "1", CutOffTime: "0900", BillingMethod: "1", Integrated: true, StandAlone: false, Name: "Back Door"),
TerminalClass(TermID: "term123454", MerchNbr: "MID123456789123", CustNbr: "Cust123456", ActivationDate: "1/1/2016", DeactivationDate: nil, CommType: "1", CutOffTime: "0900", BillingMethod: "1", Integrated: true, StandAlone: false, Name: "Front Door"),
TerminalClass(TermID: "term123453", MerchNbr: "MID123456789123", CustNbr: "Cust123456", ActivationDate: "1/1/2016", DeactivationDate: nil, CommType: "1", CutOffTime: "0900", BillingMethod: "1", Integrated: true, StandAlone: false, Name: "Upstairs"),
TerminalClass(TermID: "term123452", MerchNbr: "MID456789123466", CustNbr: "Cust123456", ActivationDate: "1/1/2016", DeactivationDate: nil, CommType: "1", CutOffTime: "0900", BillingMethod: "1", Integrated: true, StandAlone: false, Name: "Front Door"),
TerminalClass(TermID: "term123451", MerchNbr: "MID456789123466", CustNbr: "Cust123456", ActivationDate: "1/1/2016", DeactivationDate: nil, CommType: "1", CutOffTime: "0900", BillingMethod: "1", Integrated: true, StandAlone: false, Name: "Side Door"),
TerminalClass(TermID: "term123450", MerchNbr: "MID456789123477", CustNbr: "Cust987654", ActivationDate: "1/1/2016", DeactivationDate: nil, CommType: "1", CutOffTime: "0900", BillingMethod: "1", Integrated: true, StandAlone: false, Name: "Front Door"),
TerminalClass(TermID: "term123449", MerchNbr: "MID456789123477", CustNbr: "Cust987654", ActivationDate: "1/1/2016", DeactivationDate: nil, CommType: "1", CutOffTime: "0900", BillingMethod: "1", Integrated: true, StandAlone: false, Name: "side Door"),
TerminalClass(TermID: "term123448", MerchNbr: "MID456789123488", CustNbr: "Cust987654", ActivationDate: "1/1/2016", DeactivationDate: nil, CommType: "1", CutOffTime: "0900", BillingMethod: "1", Integrated: true, StandAlone: false, Name: "Front Door"),
TerminalClass(TermID: "term123447", MerchNbr: "MID456789123488", CustNbr: "Cust987654", ActivationDate: "1/1/2016", DeactivationDate: nil, CommType: "1", CutOffTime: "0900", BillingMethod: "1", Integrated: true, StandAlone: false, Name: "side Door"),
TerminalClass(TermID: "term123446", MerchNbr: "MID456789123499", CustNbr: "Cust987654", ActivationDate: "1/1/2016", DeactivationDate: nil, CommType: "1", CutOffTime: "0900", BillingMethod: "1", Integrated: true, StandAlone: false, Name: "Front Door"),
TerminalClass(TermID: "term123445", MerchNbr: "MID456789123499", CustNbr: "Cust987654", ActivationDate: "1/1/2016", DeactivationDate: nil, CommType: "1", CutOffTime: "0900", BillingMethod: "1", Integrated: true, StandAlone: false, Name: "downstairs Door"),
TerminalClass(TermID: "term123444", MerchNbr: "MID456789123122", CustNbr: "Cust111111", ActivationDate: "1/1/2016", DeactivationDate: nil, CommType: "1", CutOffTime: "0900", BillingMethod: "1", Integrated: true, StandAlone: false, Name: "Front Door"),
TerminalClass(TermID: "term123443", MerchNbr: "MID456789123122", CustNbr: "Cust111111", ActivationDate: "1/1/2016", DeactivationDate: nil, CommType: "1", CutOffTime: "0900", BillingMethod: "1", Integrated: true, StandAlone: false, Name: "back Door"),
TerminalClass(TermID: "term123442", MerchNbr: "MID456789123100", CustNbr: "Cust111111", ActivationDate: "1/1/2016", DeactivationDate: nil, CommType: "1", CutOffTime: "0900", BillingMethod: "1", Integrated: true, StandAlone: false, Name: "Front Door"),
TerminalClass(TermID: "term123441", MerchNbr: "MID456789123100", CustNbr: "Cust111111", ActivationDate: "1/1/2016", DeactivationDate: nil, CommType: "1", CutOffTime: "0900", BillingMethod: "1", Integrated: true, StandAlone: false, Name: "side Door"),
TerminalClass(TermID: "term123440", MerchNbr: "MID456789123111", CustNbr: "Cust111111", ActivationDate: "1/1/2016", DeactivationDate: nil, CommType: "1", CutOffTime: "0900", BillingMethod: "1", Integrated: true, StandAlone: false, Name: "Front Door"),
TerminalClass(TermID: "term123439", MerchNbr: "MID456789123111", CustNbr: "Cust111111", ActivationDate: "1/1/2016", DeactivationDate: nil, CommType: "1", CutOffTime: "0900", BillingMethod: "1", Integrated: true, StandAlone: false, Name: "basement"),
TerminalClass(TermID: "term123438", MerchNbr: "MID456789123133", CustNbr: "Cust111111", ActivationDate: "1/1/2016", DeactivationDate: nil, CommType: "1", CutOffTime: "0900", BillingMethod: "1", Integrated: true, StandAlone: false, Name: "Front Door"),
TerminalClass(TermID: "term123437", MerchNbr: "MID456789123144", CustNbr: "Cust111111", ActivationDate: "1/1/2016", DeactivationDate: nil, CommType: "1", CutOffTime: "0900", BillingMethod: "1", Integrated: true, StandAlone: false, Name: "Front Door"),
]


let batchData = [
    Batch(BatchNbr: "00001", ProcessingDate: "7/1/2016", TranCount: 1, PaidDate: "7/2/2016", TermNbr: "Term123456", Sales: 360.00, Returns: 0.00, PaidByWorldPay: 350.00, PaidByThirdParty: 10.00),
        Batch(BatchNbr: "00002", ProcessingDate: "7/2/2016", TranCount: 11, PaidDate: "7/3/2016", TermNbr: "Term123456", Sales: 0.00, Returns: 10.01, PaidByWorldPay: -10.01, PaidByThirdParty: 0.00),
        Batch(BatchNbr: "00021", ProcessingDate: "7/1/2016", TranCount: 12, PaidDate: "7/2/2016", TermNbr: "term123455", Sales: 10.01, Returns: 0.00, PaidByWorldPay: 10.01, PaidByThirdParty: 0.00),
        Batch(BatchNbr: "00301", ProcessingDate: "7/2/2016", TranCount: 1, PaidDate: "7/3/2016", TermNbr: "term123455", Sales: 10.01, Returns: 0.00, PaidByWorldPay: 10.01, PaidByThirdParty: 0.00),
        Batch(BatchNbr: "00401", ProcessingDate: "7/1/2016", TranCount: 13, PaidDate: "7/2/2016", TermNbr: "term123454", Sales: 10.01, Returns: 0.00, PaidByWorldPay: 10.01, PaidByThirdParty: 0.00),
        Batch(BatchNbr: "04001", ProcessingDate: "7/2/2016", TranCount: 14, PaidDate: "7/3/2016", TermNbr: "term123454", Sales: 10.01, Returns: 0.00, PaidByWorldPay: 10.01, PaidByThirdParty: 0.00),
        Batch(BatchNbr: "05001", ProcessingDate: "7/1/2016", TranCount: 15, PaidDate: "7/2/2016", TermNbr: "term123453", Sales: 10.01, Returns: 0.00, PaidByWorldPay: 10.01, PaidByThirdParty: 0.00),
        Batch(BatchNbr: "06001", ProcessingDate: "7/2/2016", TranCount: 16, PaidDate: "7/3/2016", TermNbr: "term123453", Sales: 10.01, Returns: 0.00, PaidByWorldPay: 10.01, PaidByThirdParty: 0.00),
        Batch(BatchNbr: "07001", ProcessingDate: "7/1/2016", TranCount: 17, PaidDate: "7/2/2016", TermNbr: "term123452", Sales: 10.01, Returns: 0.00, PaidByWorldPay: 10.01, PaidByThirdParty: 0.00),
        Batch(BatchNbr: "00071", ProcessingDate: "7/2/2016", TranCount: 18, PaidDate: "7/3/2016", TermNbr: "term123452", Sales: 20.01, Returns: 0.00, PaidByWorldPay: 10.01, PaidByThirdParty: 10.00),
        Batch(BatchNbr: "00701", ProcessingDate: "7/1/2016", TranCount: 19, PaidDate: "7/2/2016", TermNbr: "term123451", Sales: 210.01, Returns: 0.00, PaidByWorldPay: 10.01, PaidByThirdParty: 200.00),
        Batch(BatchNbr: "70001", ProcessingDate: "7/2/2016", TranCount: 21, PaidDate: "7/3/2016", TermNbr: "term123451", Sales: 40.01, Returns: 0.00, PaidByWorldPay: 10.01, PaidByThirdParty: 30.00),
        Batch(BatchNbr: "80001", ProcessingDate: "7/1/2016", TranCount: 22, PaidDate: "7/2/2016", TermNbr: "term123450", Sales: 50.01, Returns: 0.00, PaidByWorldPay: 10.01, PaidByThirdParty: 40.00),
        Batch(BatchNbr: "08001", ProcessingDate: "7/2/2016", TranCount: 23, PaidDate: "7/3/2016", TermNbr: "term123450", Sales: 60.01, Returns: 0.00, PaidByWorldPay: 10.01, PaidByThirdParty: 50.00),
        Batch(BatchNbr: "00801", ProcessingDate: "7/1/2016", TranCount: 24, PaidDate: "7/2/2016", TermNbr: "term123449", Sales: 70.01, Returns: 0.00, PaidByWorldPay: 10.01, PaidByThirdParty: 60.00),
        Batch(BatchNbr: "00081", ProcessingDate: "7/2/2016", TranCount: 25, PaidDate: "7/3/2016", TermNbr: "term123449", Sales: 80.01, Returns: 0.00, PaidByWorldPay: 10.01, PaidByThirdParty: 70.00),
        Batch(BatchNbr: "90001", ProcessingDate: "7/1/2016", TranCount: 26, PaidDate: "7/2/2016", TermNbr: "term123448", Sales: 90.01, Returns: 0.00, PaidByWorldPay: 10.01, PaidByThirdParty: 80.00),
        Batch(BatchNbr: "09001", ProcessingDate: "7/2/2016", TranCount: 27, PaidDate: "7/3/2016", TermNbr: "term123447", Sales: 100.01, Returns: 0.00, PaidByWorldPay: 10.01, PaidByThirdParty: 90.00),
        Batch(BatchNbr: "00901", ProcessingDate: "7/1/2016", TranCount: 28, PaidDate: "7/2/2016", TermNbr: "term123446", Sales: 110.01, Returns: 0.00, PaidByWorldPay: 10.01, PaidByThirdParty: 100.00),
        Batch(BatchNbr: "00091", ProcessingDate: "7/2/2016", TranCount: 29, PaidDate: "7/3/2016", TermNbr: "term123445", Sales: 310.01, Returns: 0.00, PaidByWorldPay: 10.01, PaidByThirdParty: 300.00),
        Batch(BatchNbr: "44001", ProcessingDate: "7/1/2016", TranCount: 30, PaidDate: "7/2/2016", TermNbr: "term123444", Sales: 3110.01, Returns: 0.00, PaidByWorldPay: 10.01, PaidByThirdParty: 3100.00),
        Batch(BatchNbr: "55001", ProcessingDate: "7/2/2016", TranCount: 31, PaidDate: "7/3/2016", TermNbr: "term123443", Sales: 7900.01, Returns: 0.00, PaidByWorldPay: 10.01, PaidByThirdParty: 7890.00),
]


let transactionData = [
Transaction(ARN: "tran123456789", CustNbr: "Cust123456",  MerchNbr: "MID123456789155",TermID: "Term123456", ProcessDate: "7/1/2016", BatchNbr: "00001", SeqNbr: 1, BusType: 2, CardType: 3, TranType: 19, AuthOnly: false, AuthDateTime: "6/30/2016", SettledAmt: 10.01, CashBackAmt: 0.00, Pan: "123456XXXXXX9999", AuthCode: "123456", PosEntryMode: "Swiped", DeviceID: "1", CvmCode: "a", GrossAmtPaid: 10.00, PaidDate: "7/2/2016", BankAcct: "XXXXXX9999", BankABA: "012345678", ProcessFee: 0.97, TranDiscFee: 0.25, CardQualType: "safest possible", TieredQualType: "", PurchOrderNbr: "PO123456789012345", InvoiceNbr: "inv12345678909999", DownGradeReason: "None", Rejected: false),
Transaction(ARN: "tran123456790", CustNbr: "Cust123456",  MerchNbr: "MID123456789155",TermID: "Term123456", ProcessDate: "7/1/2016", BatchNbr: "00001", SeqNbr: 2, BusType: 2, CardType: 2, TranType: 16, AuthOnly: false, AuthDateTime: "6/30/2016", SettledAmt: 20.00, CashBackAmt: 0.00, Pan: "123456XXXXXX3456", AuthCode: "123456", PosEntryMode: "Swiped", DeviceID: "1", CvmCode: "a", GrossAmtPaid: 20.00, PaidDate: "7/2/2016", BankAcct: "XXXXXX3456", BankABA: "012345678", ProcessFee: 1.97, TranDiscFee: 0.25, CardQualType: "safest possible", TieredQualType: "", PurchOrderNbr: "PO1234", InvoiceNbr: "inv1234", DownGradeReason: "None", Rejected: false),
Transaction(ARN: "tran123456791", CustNbr: "Cust123456",  MerchNbr: "MID123456789155",TermID: "Term123456", ProcessDate: "7/1/2016", BatchNbr: "00001", SeqNbr: 3, BusType: 2, CardType: 2, TranType: 16, AuthOnly: false, AuthDateTime: "6/30/2016", SettledAmt: 30.00, CashBackAmt: 0.00, Pan: "123456XXXXXX3456", AuthCode: "123456", PosEntryMode: "Swiped", DeviceID: "1", CvmCode: "a", GrossAmtPaid: 30.00, PaidDate: "7/2/2016", BankAcct: "XXXXXX3456", BankABA: "012345678", ProcessFee: 2.97, TranDiscFee: 0.25, CardQualType: "safest possible", TieredQualType: "", PurchOrderNbr: "PO1234", InvoiceNbr: "inv1234", DownGradeReason: "None", Rejected: false),
Transaction(ARN: "tran123456792", CustNbr: "Cust123456",  MerchNbr: "MID123456789155",TermID: "Term123456", ProcessDate: "7/1/2016", BatchNbr: "00001", SeqNbr: 4, BusType: 2, CardType: 2, TranType: 16, AuthOnly: false, AuthDateTime: "6/30/2016", SettledAmt: 40.00, CashBackAmt: 0.00, Pan: "123456XXXXXX3456", AuthCode: "123456", PosEntryMode: "Swiped", DeviceID: "1", CvmCode: "a", GrossAmtPaid: 40.00, PaidDate: "7/2/2016", BankAcct: "XXXXXX3456", BankABA: "012345678", ProcessFee: 3.97, TranDiscFee: 0.25, CardQualType: "safest possible", TieredQualType: "", PurchOrderNbr: "PO1234", InvoiceNbr: "inv1234", DownGradeReason: "None", Rejected: false),
Transaction(ARN: "tran123456793", CustNbr: "Cust123456",  MerchNbr: "MID123456789155",TermID: "Term123456", ProcessDate: "7/1/2016", BatchNbr: "00001", SeqNbr: 5, BusType: 2, CardType: 2, TranType: 16, AuthOnly: false, AuthDateTime: "6/30/2016", SettledAmt: 50.00, CashBackAmt: 0.00, Pan: "123456XXXXXX3456", AuthCode: "123456", PosEntryMode: "Swiped", DeviceID: "1", CvmCode: "a", GrossAmtPaid: 50.00, PaidDate: "7/2/2016", BankAcct: "XXXXXX3456", BankABA: "012345678", ProcessFee: 4.97, TranDiscFee: 0.25, CardQualType: "safest possible", TieredQualType: "", PurchOrderNbr: "PO1234", InvoiceNbr: "inv1234", DownGradeReason: "None", Rejected: false),
Transaction(ARN: "tran123456794", CustNbr: "Cust123456",  MerchNbr: "MID123456789155",TermID: "Term123456", ProcessDate: "7/1/2016", BatchNbr: "00001", SeqNbr: 6, BusType: 2, CardType: 2, TranType: 16, AuthOnly: false, AuthDateTime: "6/30/2016", SettledAmt: 60.00, CashBackAmt: 0.00, Pan: "123456XXXXXX3456", AuthCode: "123456", PosEntryMode: "Swiped", DeviceID: "1", CvmCode: "a", GrossAmtPaid: 60.00, PaidDate: "7/2/2016", BankAcct: "XXXXXX3456", BankABA: "012345678", ProcessFee: 5.97, TranDiscFee: 0.25, CardQualType: "safest possible", TieredQualType: "", PurchOrderNbr: "PO1234", InvoiceNbr: "inv1234", DownGradeReason: "None", Rejected: false),
Transaction(ARN: "tran123456795", CustNbr: "Cust123456",  MerchNbr: "MID123456789155",TermID: "Term123456", ProcessDate: "7/1/2016", BatchNbr: "00001", SeqNbr: 7, BusType: 2, CardType: 2, TranType: 16, AuthOnly: false, AuthDateTime: "6/30/2016", SettledAmt: 70.00, CashBackAmt: 0.00, Pan: "123456XXXXXX3456", AuthCode: "123456", PosEntryMode: "Swiped", DeviceID: "1", CvmCode: "a", GrossAmtPaid: 70.00, PaidDate: "7/2/2016", BankAcct: "XXXXXX3456", BankABA: "012345678", ProcessFee: 6.97, TranDiscFee: 0.25, CardQualType: "safest possible", TieredQualType: "", PurchOrderNbr: "PO1234", InvoiceNbr: "inv1234", DownGradeReason: "None", Rejected: false),
Transaction(ARN: "tran123456796", CustNbr: "Cust123456",  MerchNbr: "MID123456789155",TermID: "Term123456", ProcessDate: "7/1/2016", BatchNbr: "00001", SeqNbr: 8, BusType: 2, CardType: 2, TranType: 16, AuthOnly: false, AuthDateTime: "6/30/2016", SettledAmt: 80.00, CashBackAmt: 0.00, Pan: "123456XXXXXX3456", AuthCode: "123456", PosEntryMode: "Swiped", DeviceID: "1", CvmCode: "a", GrossAmtPaid: 80.00, PaidDate: "7/2/2016", BankAcct: "XXXXXX3456", BankABA: "012345678", ProcessFee: 7.97, TranDiscFee: 0.25, CardQualType: "safest possible", TieredQualType: "", PurchOrderNbr: "PO1234", InvoiceNbr: "inv1234", DownGradeReason: "None", Rejected: false)
]