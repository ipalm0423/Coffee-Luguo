//
//  ContactsTableViewController.swift
//  Coffee Luguo
//
//  Created by Laibit on 2015/9/19.
//  Copyright © 2015年 陳冠宇. All rights reserved.
//

import UIKit

class ContactsTableViewController: UITableViewController {
    
    var titleName = ["會員基本資料", "我的爐鍋卡", "我的爐鍋咖啡"]

    @IBOutlet weak var helloWorldLabel: UILabel!
    
    @IBAction func outButton(sender: AnyObject) {
        
        let alertController = UIAlertController(title: "系统提示",
            message: "您確定要登出吗？", preferredStyle: UIAlertControllerStyle.Alert)
        let cancelAction = UIAlertAction(title: "取消", style: UIAlertActionStyle.Cancel, handler: nil)
        let okAction = UIAlertAction(title: "確定", style: UIAlertActionStyle.Default,
            handler: {
                action in
                print("點擊了确定")
        })
        alertController.addAction(cancelAction)
        alertController.addAction(okAction)
        self.presentViewController(alertController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
         //self.helloWorldLabel.text = "Hello, 賴先生"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 4
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        switch indexPath.row {
        case 0 :
            print("row1")
            let imageCell = tableView.dequeueReusableCellWithIdentifier("imageCell", forIndexPath: indexPath) as! imageTableViewCell
            imageCell.imageView?.image = UIImage(named:"coffeeL.jpg")
            return imageCell            
        case 1 :
            print("row 2")
            let cell = tableView.dequeueReusableCellWithIdentifier("cell1", forIndexPath: indexPath) as! cellTableViewCell
            cell.firstLabel.text = titleName[0]
            return cell
            
        case 2 :
            print("row 3")
            let cell = tableView.dequeueReusableCellWithIdentifier("cell2", forIndexPath: indexPath) as! cellTableViewCell
            cell.firstLabel.text = titleName[1]
            return cell
        case 3 :
            print("row 4")
            let cell = tableView.dequeueReusableCellWithIdentifier("cell3", forIndexPath: indexPath) as! cellTableViewCell
            cell.firstLabel.text = titleName[2]
            return cell
        default :
            print("no row")
            let cell = tableView.dequeueReusableCellWithIdentifier("cell1", forIndexPath: indexPath) as! cellTableViewCell
            cell.firstLabel.text = titleName[1]
            return cell
        }
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 350
        }
        //return UITableViewAutomaticDimension
        return 80
    }

    func showCoffeeCard(){
        let coffee_vc = self.storyboard?.instantiateViewControllerWithIdentifier("showCoffeeCard") as! coffeeCardViewController
        self.showViewController(coffee_vc, sender: self)
    }
    
    func showContacts(){
        let contacts_vc = self.storyboard?.instantiateViewControllerWithIdentifier("showContacts") as! ContactsDetiaViewController
        self.showViewController(contacts_vc, sender: self)
    }
    
    func showMyCoffee(){
        let myCoffee_vc = self.storyboard?.instantiateViewControllerWithIdentifier("myCoffee") as! MyCoffeeViewController
        self.showViewController(myCoffee_vc, sender: self)
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        switch indexPath.row {
        case 0 :
            print("0")
        case 1 :
            print("1")
            showContacts()
        case 2 :
            print("2")
            showCoffeeCard()
        case 3 :
            print("3")
            showMyCoffee()
        default:
            print("")
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
