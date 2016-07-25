//
//  MerchantDepositCell.swift
//  Ratings_2
//
//  Created by William Dalton on 7/3/16.
//  Copyright © 2016 William Dalton. All rights reserved.
//

import UIKit

class MerchDepCell: UITableViewCell {
    
    @IBOutlet weak var returns: UILabel!
    @IBOutlet weak var PaidByWorldpay: UILabel!
    @IBOutlet weak var MerchNbr: UILabel!
    @IBOutlet weak var TotalPaid: UILabel!
    @IBOutlet weak var PaidByThirdParty: UILabel!
    @IBOutlet weak var MerchName: UILabel!

    var merchant: Merchant! {
        didSet {
            MerchNbr.text = merchant.merchNbr
            MerchName.text = merchant.name

            let dep = deposit(merchant.merchNbr, startProcessingDate: "7/1/2016",endProcessingDate: "7/2/2016")
            let formatter = NSNumberFormatter()
            formatter.numberStyle = .CurrencyStyle
            // formatter.locale = NSLocale.currentLocale() // This is the default


            PaidByWorldpay.text = formatter.stringFromNumber(dep.paidByWorldPay)
            PaidByThirdParty.text = formatter.stringFromNumber(dep.paidByThirdParty)
            TotalPaid.text = formatter.stringFromNumber(dep.totalDeposit)
            returns.text = formatter.stringFromNumber(dep.returns)
            
        }
    }
    
    func deposit(merchNbr: String,startProcessingDate: String, endProcessingDate: String) -> (paidByWorldPay: Double, paidByThirdParty: Double, totalDeposit:Double, returns: Double) {
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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}