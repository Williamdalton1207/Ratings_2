//
//  CustomerCell.swift
//  Ratings_2
//
//  Created by William Dalton on 7/3/16.
//  Copyright © 2016 William Dalton. All rights reserved.
//

import UIKit

class CustomerCell: UITableViewCell {
    @IBOutlet weak var gameLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ratingImageView: UIImageView!
    
    var customer: Customer! {
        didSet {
            gameLabel.text = customer.custNbr
            nameLabel.text = customer.name
            ratingImageView.image = imageForRating(customer.sensitivityLevel)
        }
    }
    
    func imageForRating(rating:Int) -> UIImage? {
        var imageName = ""
        //if rating==1{
            imageName = "\(1)StarSmall"
    //}
        //else{
         //   imageName = "\(rating)StarsSmall"}
        
        return UIImage(named: imageName)
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