//
//  PlayerCell.swift
//  Ratings_2
//
//  Created by William Dalton on 6/26/16.
//  Copyright © 2016 William Dalton. All rights reserved.
//

import UIKit

class PlayerCell: UITableViewCell {
    @IBOutlet weak var gameLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ratingImageView: UIImageView!
    
    var player: Player! {
        didSet {
            gameLabel.text = player.game
            nameLabel.text = player.name
            ratingImageView.image = imageForRating(player.rating)
        }
    }
    
    func imageForRating(rating:Int) -> UIImage? {
        var imageName = ""
        if rating==1{
            imageName = "\(rating)StarSmall"}
        else{
            imageName = "\(rating)StarsSmall"}
        
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
