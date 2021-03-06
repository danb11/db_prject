//
//  FirstTableViewController.swift
//  collector_project
//
//  Created by Danb on 2017. 2. 8..
//  Copyright © 2017년 Danb. All rights reserved.
//

import UIKit
import RealmSwift


class FirstTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, MakeFolderDelegate {
    
    let realm = try! Realm()
    let result = try! Realm().objects(FolderData.self)
    
   
    //var reuseIdentifier = "folder"
    var folderName = [String]()
    var bgimage = ["design.jpg","travel.jpg"]

    
    @IBOutlet weak var tableView : UITableView!
    
    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        realm.beginWrite()
        realm.create(FolderData.self, value: ["name": "lkhjfbkj,hjfjr"])
        try! realm.commitWrite()
        
        print(Realm.Configuration.defaultConfiguration.fileURL!)
        print(result[0].name)
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    @IBAction func gotoMakeFolder(sender : AnyObject) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyBoard.instantiateViewController(withIdentifier: "makefolderViewController") as? makefolderViewController
        viewController?.delegate = self
        self.present(viewController!, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return folderName.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "folder", for: indexPath) as! folderTableViewCell
        let addfoldername = folderName[indexPath.row]
        cell.addfoldername.text = addfoldername
        cell.addfolderIMG.image = #imageLiteral(resourceName: "sky")
        
        
       // cell.addfoldername.font = UIFont(name: "Gotham Rounded Light", size: 60)

        return cell
    }

    
    // Override to support editing the table view.
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            folderName.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            // Delete the row from the data source
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    
    // makeFolderDelegate
    func makeFolderView(SaveMakeFolder text: String) {
       // print(text)
        self.folderName.append(text)
        self.tableView.reloadData()
    }
   
    
    func makeFolderViewClose() {
       // let alertController = UIAlertController(title: "alert", message: "makeFolderViewClosed", preferredStyle: .alert)
       // let cancle = UIAlertAction(title: "확인", style: .cancel, handler: nil)
      //  alertController.addAction(cancle)
//        self.present(alertController, animated: true, completion: nil)
    }
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
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
