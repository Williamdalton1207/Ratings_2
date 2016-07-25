//
//  TransactionCell.swift
//  Ratings_2
//
//  Created by William Dalton on 7/6/16.
//  Copyright © 2016 William Dalton. All rights reserved.
//

import UIKit

class TransactionCell: UITableViewCell {
    @IBOutlet weak var amt: UILabel!
    @IBOutlet weak var pan: UILabel!
    @IBOutlet weak var poNbr: UILabel!
    @IBOutlet weak var invNbr: UILabel!
    @IBOutlet weak var tranDate: UILabel!
    @IBOutlet weak var arn: UILabel!
    
    @IBOutlet weak var tranType: UILabel!
    var transactions: Transactions! {
        didSet {
            tranDate.text = transactions.tranDate
            pan.text = transactions.pan
            poNbr.text = transactions.poNbr
            invNbr.text = transactions.invNbr
            
            let formatter = NSNumberFormatter()
            formatter.numberStyle = .CurrencyStyle
            
            amt.text = formatter.stringFromNumber(transactions.amt)
            arn.text = transactions.arn
            tranType.text = transactions.tranType
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
