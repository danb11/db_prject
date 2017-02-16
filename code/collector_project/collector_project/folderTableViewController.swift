//
//  folderTableViewController.swift
//  collector_project
//
//  Created by Danb on 2017. 2. 7..
//  Copyright © 2017년 Danb. All rights reserved.
//


// 연습용 컨트롤뷰

import UIKit


var dataName = [String]()
var images = ["design.jpg","travel.jpg"]

class folderTableViewController: UITableViewController {
    

    var reuseIdentifier = "folder"
   
    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return dataName.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! imgTableViewCell
        let destination = dataName [indexPath.row]
        cell.addLabel.text = destination
        
        switch destination {
        case "iOS":
            cell.addIMG.image = UIImage(named: "travel.jpg")
        case "Cook" :
            cell.addIMG.image = UIImage(named: "design.jpg")

        case "Design" :
            cell.addIMG.image = UIImage(named: "fall.jpg")

        default:
            cell.addIMG.image = UIImage(named: "road.jpg")

        }
 
        return cell
 
    }
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
    if editingStyle == .delete {
        dataName.remove(at: indexPath.row)
        tableView.deleteRows(at: [indexPath], with: .fade)
        }
        
    else if editingStyle == .insert {
        }
    }
    
    @IBAction func cancelbtt(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }



    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

