//
//  PlayersViewController.swift
//  Ratings_2
//
//  Created by William Dalton on 6/24/16.
//  Copyright © 2016 William Dalton. All rights reserved.
//

import UIKit

class PlayersViewController: UITableViewController {
var customers:[Customer] = customerData
    var cust:customer?
    var selectedCust:String?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return customers.count
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath)
        -> UITableViewCell {
            let cell = tableView.dequeueReusableCellWithIdentifier("CustomerCell", forIndexPath: indexPath)
                as! CustomerCell

            
            let customer = customers[indexPath.row] as Customer
            cell.customer = customer
            return cell
    }
    @IBAction func cancelToPlayersViewController(segue:UIStoryboardSegue) {
    }
    
    @IBAction func savePlayerDetail(segue:UIStoryboardSegue) {
       // if let playerDetailsViewController = segue.sourceViewController as? PlayerDetailsViewController {
            
           // add the new player to the players array if player name isn't empty
          //  if let player = playerDetailsViewController.player {
                //if !player.name!.isEmpty{
                  //  players.append(player)
                
                
                //update the tableView
          //      let indexPath = NSIndexPath(forRow: customers.count-1, inSection: 0)
              //      tableView.insertRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)}
           // }
        //}
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        
        if segue.identifier == "merchDepSegue" {
            //if let destination = segue.destinationViewController as? MerchantDepositViewController {
            let navController = segue.destinationViewController as! UINavigationController
            let destination = navController.topViewController as! MerchantDepositViewController
            let cell = sender as! UITableViewCell
            let selectedRow = tableView.indexPathForCell(cell)!.row
            destination.custNbr = customers[selectedRow]
        }
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */


}
