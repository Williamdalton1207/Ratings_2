//
//  BatchDepViewController.swift
//  Ratings_2
//
//  Created by William Dalton on 7/5/16.
//  Copyright © 2016 William Dalton. All rights reserved.
//

import UIKit

class BatchDepViewController: UITableViewController {
    var terminals:[TerminalClass] = terminalData
    var batchDataSource:[Batch] = batchData
    var merchNbr: String?
    var merchantName: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        if let storeName = merchantName{
        self.navigationItem.prompt = "Store:\(storeName)"
        self.navigationItem.title = "Batch Summary"
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

    func getBatch(merchNbr: String) -> [Batch] {
        var batch: [Batch] = []
        var terminalID: String
        for i in 0...terminals.count-1{
            if terminals[i].merchNbr == merchNbr{
                terminalID = terminals[i].termID
                for ii in 0...batchDataSource.count-1{
                    if terminalID == batchDataSource[ii].termNbr{
                        batch.append(batchDataSource[ii])
                    }
                }
            }
        }
        return batch
    }
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         //#warning Incomplete implementation, return the number of rows
        let rowCount: Int = getBatch(merchNbr!).count
        return rowCount
        
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath)
        -> UITableViewCell {
            let cell = tableView.dequeueReusableCellWithIdentifier("BatchDepCell", forIndexPath: indexPath)
                as! BatchDepCell

            let merBatch = getBatch(merchNbr!)[indexPath.row] as Batch
            cell.batch = merBatch
            //cell.textLabel?.text = merchant.merchNbr
            return cell
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


    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "tranSegue" {
            let indexPath = self.tableView.indexPathForSelectedRow!
            let navController = segue.destinationViewController as! UINavigationController
            let destination = navController.topViewController as! TransactionViewController
            // get the cell associated with the indexPath selected.
            let cell = self.tableView.cellForRowAtIndexPath(indexPath) as! BatchDepCell!
            
            destination.batchNbr = cell.batchNbr.text
            if let storeName = merchantName{
                destination.merchName = storeName}
            destination.termID = cell.TermID.text
            
        }
        
    }
    @IBAction func cancelToBatchDepViewController(segue:UIStoryboardSegue) {
    }
}
