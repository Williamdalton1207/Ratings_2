//
//  TransactionViewController.swift
//  Ratings_2
//
//  Created by William Dalton on 7/6/16.
//  Copyright © 2016 William Dalton. All rights reserved.
//

import UIKit

class TransactionViewController: UITableViewController {
    var transactionsData:[Transaction] = transactionData
    var termID: String?
    var batchNbr: String?
    var merchName: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        if let tID = termID{
            if let mNAme = merchName{
            self.navigationItem.prompt = "Store:\(mNAme) \(tID)"
            self.navigationItem.title = "Batch nbr. \(batchNbr!)"}
        }
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func getTransactions(TermID: String, batchNbr: String) -> [Transactions] {
        var trans: [Transactions] = []
        for i in 0...transactionsData.count-1{
        if TermID == transactionsData[i].termID && batchNbr == transactionsData[i].batchNbr{
            trans.append(Transactions(trans: transactionsData[i]))
            }
        }
        return trans
    }
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //#warning Incomplete implementation, return the number of rows
        let rowCount: Int = getTransactions(termID!,batchNbr: batchNbr!).count
        return rowCount
        
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath)
        -> UITableViewCell {
            let cell = tableView.dequeueReusableCellWithIdentifier("TransactionCell", forIndexPath: indexPath)
                as! TransactionCell
            
            let trans = getTransactions(termID!,batchNbr: batchNbr!)[indexPath.row] as Transactions
            cell.transactions = trans
            return cell
    }
    

    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        // Configure the cell...

        return cell
    }
    */

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

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "TranDetailSegue" {
            let indexPath = self.tableView.indexPathForSelectedRow!
            let navController = segue.destinationViewController as! UINavigationController
            let destination = navController.topViewController as! TranDetailViewController
            // get the cell associated with the indexPath selected.
            let cell = self.tableView.cellForRowAtIndexPath(indexPath) as! TransactionCell!
            destination.arn = cell.arn.text
            if let mNAme = merchName{
                destination.merchName = mNAme}
        }
        
    }
    
    @IBAction func cancelToTransactionViewController(segue:UIStoryboardSegue) {
    }
}
