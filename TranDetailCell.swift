//
//  TranDetailCell.swift
//  Ratings_2
//
//  Created by William Dalton on 7/7/16.
//  Copyright © 2016 William Dalton. All rights reserved.
//

import UIKit

class TranDetailCell: UITableViewCell {


    @IBOutlet weak var merchNbr: UILabel!
  
    @IBOutlet weak var poNbr: UILabel!
    @IBOutlet weak var invNbr: UILabel!
    @IBOutlet weak var dgReason: UILabel!
    
    @IBOutlet weak var procFee: UILabel!
    @IBOutlet weak var cardQualType: UILabel!
    @IBOutlet weak var tranDiscFee: UILabel!
    @IBOutlet weak var aba: UILabel!
    @IBOutlet weak var bankAcct: UILabel!
    @IBOutlet weak var busType: UILabel!
    @IBOutlet weak var amtPaid: UILabel!
    @IBOutlet weak var tranDate: UILabel!
    @IBOutlet weak var cvmCode: UILabel!
    @IBOutlet weak var deviceID: UILabel!
    @IBOutlet weak var posEntryMode: UILabel!
    @IBOutlet weak var tranType: UILabel!
    @IBOutlet weak var cardType: UILabel!
    @IBOutlet weak var paidDate: UILabel!
    @IBOutlet weak var authCode: UILabel!
    @IBOutlet weak var pan: UILabel!
    @IBOutlet weak var seqNbr: UILabel!
    @IBOutlet weak var settleDate: UILabel!
    @IBOutlet weak var cashBack: UILabel!
    @IBOutlet weak var amt: UILabel!
    @IBOutlet weak var batchNo: UILabel!
    @IBOutlet weak var tid: UILabel!
    
    var transaction: Transaction! {
        didSet {
            tranDate.text = transaction.authDateTime
            poNbr.text = transaction.purchOrderNbr
            invNbr.text = transaction.invoiceNbr
            authCode.text=transaction.authCode
            pan.text=transaction.pan
            tid.text = transaction.termID
            dgReason.text = transaction.downGradeReason
            aba.text=transaction.bankABA
            bankAcct.text=transaction.bankAcct
            cardQualType.text=transaction.cardQualType
            cvmCode.text=transaction.cvmCode
            deviceID.text=transaction.deviceID
            posEntryMode.text=transaction.posEntryMode
            paidDate.text=transaction.paidDate
            batchNo.text=transaction.batchNbr
            settleDate.text=transaction.processDate
            
            
            let formatter = NSNumberFormatter()
            formatter.numberStyle = .CurrencyStyle
            
            amtPaid.text=formatter.stringFromNumber(transaction.grossAmtPaid)
            amt.text = formatter.stringFromNumber(transaction.settledAmt)
            cashBack.text=formatter.stringFromNumber(transaction.cashBackAmt)
            formatter.numberStyle = .NoStyle
            
            busType.text=formatter.stringFromNumber(transaction.busType)
            tranType.text=formatter.stringFromNumber(transaction.tranType)
            cardType.text=formatter.stringFromNumber(transaction.cardType)
            seqNbr.text=formatter.stringFromNumber(transaction.seqNbr)
            
            formatter.numberStyle = .DecimalStyle
            procFee.text=formatter.stringFromNumber(transaction.processFee)
            tranDiscFee.text=formatter.stringFromNumber(transaction.tranDiscFee)
            
            }
    }

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
