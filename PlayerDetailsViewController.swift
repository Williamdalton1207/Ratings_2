//
//  PlayerDetailsViewController.swift
//  Ratings_2
//
//  Created by William Dalton on 6/27/16.
//  Copyright © 2016 William Dalton. All rights reserved.
//

import UIKit

class PlayerDetailsViewController: UITableViewController {
    var player:Player?
   
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    var game:String = "Chess" {
        didSet {
            detailLabel.text? = game
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        if segue.identifier == "SavePlayerDetail" {
//            player = Player(name: nameTextField.text!, game: "Chess", rating: 1)
//        }
//    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "SavePlayerDetail" {
                player = Player(name: nameTextField.text, game:game, rating: 1)
        }
        if segue.identifier == "PickGame" {
            if let gamePickerViewController = segue.destinationViewController as? GamePickerViewController {
                gamePickerViewController.selectedGame = game
            }
        }
    }
    
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.section == 0 {
            nameTextField.becomeFirstResponder()
        }
    }
    @IBAction func unwindWithSelectedGame(segue:UIStoryboardSegue) {
        if let gamePickerViewController = segue.sourceViewController as? GamePickerViewController,
            selectedGame = gamePickerViewController.selectedGame {
            game = selectedGame
        }
    }
    

    //    required init?(coder aDecoder: NSCoder) {
//        print("init PlayerDetailsViewController")
//        super.init(coder: aDecoder)
//    }
//    
//    deinit {
//        print("deinit PlayerDetailsViewController")
//    }
}
