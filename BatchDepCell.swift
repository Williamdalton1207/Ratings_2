//
//  BatchDepCell.swift
//  Ratings_2
//
//  Created by William Dalton on 7/5/16.
//  Copyright © 2016 William Dalton. All rights reserved.
//

import UIKit

class BatchDepCell: UITableViewCell {
    @IBOutlet weak var tranCount: UILabel!
    @IBOutlet weak var total: UILabel!
    @IBOutlet weak var paidByTP: UILabel!
    @IBOutlet weak var returns: UILabel!
    @IBOutlet weak var paidByWP: UILabel!
    @IBOutlet weak var paidDate: UILabel!
    @IBOutlet weak var procDate: UILabel!
    @IBOutlet weak var batchNbr: UILabel!
    @IBOutlet weak var TermID: UILabel!
    
    var batch: Batch! {
        didSet {
            TermID.text = batch.termNbr
            batchNbr.text = batch.batchNbr
            procDate.text = batch.processingDate
            paidDate.text = batch.paidDate
            print(batch.termNbr)
            //let BatchDep = batchDep(batch.termNbr, startProcessingDate: "7/1/2016",endProcessingDate: "7/2/2016")
            let formatter = NSNumberFormatter()
            formatter.numberStyle = .CurrencyStyle
            // formatter.locale = NSLocale.currentLocale() // This is the default
            
            paidByWP.text = formatter.stringFromNumber(batch.paidByWorldPay)
            paidByTP.text = formatter.stringFromNumber(batch.paidByThirdParty)
            returns.text = formatter.stringFromNumber(batch.returns)
            total.text = formatter.stringFromNumber(batch.sales)
            formatter.numberStyle = .NoStyle
            tranCount.text = formatter.stringFromNumber(batch.tranCount)
            batchNbr.text = batch.batchNbr

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
