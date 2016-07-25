//
//  MerchantDepositViewController.swift
//  Ratings_2
//
//  Created by William Dalton on 6/29/16.
//  Copyright © 2016 William Dalton. All rights reserved.
//

import UIKit

class MerchantDepositViewController: UITableViewController {
    var merchants:[Merchant] = merchantData
    var custNbr: Customer?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.prompt = "Customer: \(custNbr!.name)"
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func getDeposits(CustNbr: String) -> [Merchant] {
        var merchantDeposits: [Merchant] = []
        for i in 0...merchants.count-1{
            if merchants[i].custNbr == CustNbr{
                let mer = merchantData[i]
                let dep = mer.deposit("7/1/2016",endProcessingDate: "7/2/2016")
                if dep.totalDeposit > 0 {
                    merchantDeposits.append(merchantData[i])}
            }
        }
        return merchantDeposits
    }
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return getDeposits(custNbr!.custNbr).count
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath)
        -> UITableViewCell {
            let cell = tableView.dequeueReusableCellWithIdentifier("MerchDepCell", forIndexPath: indexPath)
                as! MerchDepCell
            
            let merchant = getDeposits(custNbr!.custNbr)[indexPath.row] as Merchant
            cell.merchant = merchant
            //cell.textLabel?.text = merchant.merchNbr
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
        if segue.identifier == "batchDepSegue" {
            let indexPath = self.tableView.indexPathForSelectedRow!
            let navController = segue.destinationViewController as! UINavigationController
            let destination = navController.topViewController as! BatchDepViewController 
                    // get the cell associated with the indexPath selected.
                    let cell = self.tableView.cellForRowAtIndexPath(indexPath) as! MerchDepCell!
                
                    destination.merchNbr = cell.MerchNbr.text
                    destination.merchantName = cell.MerchName.text
            }

    }
    @IBAction func cancelToMerchDepViewController(segue:UIStoryboardSegue) {
    }
}