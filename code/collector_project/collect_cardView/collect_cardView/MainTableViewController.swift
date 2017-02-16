//
//  MainTableViewController.swift
//  collect_cardView
//
//  Created by Danb on 2017. 2. 12..
//  Copyright © 2017년 Danb. All rights reserved.
//
/*
import UIKit

struct cellData {
    let cell : Int!
    let text : String!
    let image : UIImage!
    let subtext : String!
}
class MainTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableA: UITableView!
    var arrayCellData = [cellData]()
   // var listcell = "tb_A"
   // var cardcell = "tb_B"
    override func viewDidLoad() {
        super.viewDidLoad()
        // tableView.registerNib(UINib(nibName: "listTableViewCell", bundle: nil), forCellReuseIdentifier: "listtable")
        
        tableA.dataSource = self
        arrayCellData = [cellData(cell : 1, text : "first", image : #imageLiteral(resourceName: "test1"), subtext: "subsubsssbbbsubusububububub"),
                         cellData(cell : 2, text : "omg",image : #imageLiteral(resourceName: "test3"), subtext: "wow i did it lol"),
                         cellData(cell : 1, text : "mgmgmggg",image : #imageLiteral(resourceName: "test2"), subtext: "subsubsssbbbsubusububububub")]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
      func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if arrayCellData[indexPath.row].cell == 1 {
            return 143
        }
        else if arrayCellData[indexPath.row].cell == 2 {
            return 100
        }
            
        else {
            return 143
        }
    }

     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayCellData.count
    }

     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if arrayCellData[indexPath.row].cell == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "listtable", for: indexPath) as! listTableViewCell
            cell.listcellIMG.image = arrayCellData[indexPath.row].image
            cell.listcelltitle.text = arrayCellData[indexPath.row].text
            cell.listcellsub.text = arrayCellData[indexPath.row].subtext
            
            return cell
            
        }
        else if arrayCellData[indexPath.row].cell == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cardtable", for: indexPath) as!cardlistTableViewCell

           // let cell = Bundle.main.loadNibNamed("cardlistTableViewCell", owner: self, options: nil)?.first as! cardlistTableViewCell
            cell.memocelltitle.text = arrayCellData[indexPath.row].text
            cell.memocellsub.text = arrayCellData[indexPath.row].subtext
            
            return cell
            
        }
            
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "listtable", for: indexPath) as! listTableViewCell
            cell.listcellIMG.image = arrayCellData[indexPath.row].image
            cell.listcelltitle.text = arrayCellData[indexPath.row].text
            cell.listcellsub.text = arrayCellData[indexPath.row].subtext

            return cell
        }

    }

   
    // Override to support conditional editing of the table view.
     func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
 

    
    // Override to support editing the table view.
     func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            arrayCellData.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    
    
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
 */
