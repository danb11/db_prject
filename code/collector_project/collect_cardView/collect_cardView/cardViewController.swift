//
//  cardViewController.swift
//  collect_cardView
//
//  Created by Danb on 2017. 2. 12..
//  Copyright © 2017년 Danb. All rights reserved.
//

import UIKit
import RealmSwift

struct cellData {
    let cell : Int!
    let text : String!
    let image : UIImage!
    let subtext : String!
}

class CardTableViewController : UIViewController, UITableViewDelegate, UITableViewDataSource, LinkDelegate {
    
    let realm = try! Realm()
    let result = try! Realm().objects(FolderData.self)


    @IBAction func cardbackBT(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBOutlet weak var listView: UITableView!
    @IBOutlet weak var blureffect: UIVisualEffectView!
    
    //@IBOutlet weak var listTableView: UITableView!
    
    
    @IBOutlet weak var addcardbt: UIButton!
    @IBOutlet weak var writebt: UIButton!
    @IBOutlet weak var linkbt: UIButton!
    
    var writebtccenter : CGPoint!
    var linkbtcenter : CGPoint!
    var effect: UIVisualEffect!
    
    var arrayCellData = [cellData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listView.dataSource = self
        listView.delegate = self
        listView.reloadData()
        
        /*
        arrayCellData = [cellData(cell : 1, text : "Jeju Island", image : #imageLiteral(resourceName: "test1"), subtext: "Jeju island summer summer summer information information Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu"),
                         cellData(cell : 2, text : "Free Image URL",image : nil, subtext: "WOW i did it lol Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu"),
                         cellData(cell : 1, text : "Travel Tip",image : #imageLiteral(resourceName: "test3"), subtext: "Blablabla :) will save data haha Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu")]
        */
        

        writebtccenter = writebt.center
        linkbtcenter = linkbt.center
        
        writebt.center = addcardbt.center
        linkbt.center = addcardbt.center

        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        listView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Datasingle.sharedInstance.linkdataSG.count
    }

    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        
//        //        if linkarray [indexPath.row].cell == 1 {
////            return 143
////        }
////        else if linkarray [indexPath.row].cell == 2 {
////            return 110
////        }
////        else {
////            return 143
////        }
//    }
 

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

       // if UITableViewCell == AListTableViewCell {
            let addcardtitle = String(describing: Datasingle.sharedInstance.linkdataSG[indexPath.row].linktitle)
            let addcardsub = String(describing: Datasingle.sharedInstance.linkdataSG[indexPath.row].linksub)
            let cell = tableView.dequeueReusableCell(withIdentifier: "cardlist", for: indexPath) as! AListTableViewCell
            cell.cardTitle.text = addcardtitle
            cell.cardSub.text = addcardsub
            cell.cardIMG.image = #imageLiteral(resourceName: "test3")
            //print("hello")
    
            return cell
           /*
            let addfoldername = folderName[indexPath.row]
            cell.addfoldername.text = addfoldername
            cell.addfolderIMG.image = #imageLiteral(resourceName: "sky")

            */
       // }
        
        /*
            let cell = tableView.dequeueReusableCell(withIdentifier: "memolist", for: indexPath) as! BListTableViewCell
            let addmemotitle = String(describing: Datasingle.sharedInstance.memodataSG[indexPath.row].memotitle)
            let addmemosub = String(describing: Datasingle.sharedInstance.memodataSG[indexPath.row].memosub)
            cell.memotitleTV = addmemotitle
            cell.memosubTV = addmemosub
            
            return cell
        
    */
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            tableView.deleteRows(at: [indexPath], with: .fade)
            }
        else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    
    
   /* @IBAction func hidememoclicked(_ sender: Any) {
        if addcardbt.currentImage == #imageLiteral(resourceName: "cancel_con_B") {
            linkbt.isHidden = true
            blureffect.isHidden = true
            writebt.isHidden = true
        }
    }
 */
    }


    @IBAction func gotoMemo(_ sender: Any) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let memoview : memoViewController = storyBoard.instantiateViewController(withIdentifier: "memoVC") as! memoViewController
       // viewController?.delegate = self
        self.present(memoview,animated: true, completion: nil)
        blureffect.isHidden = true

    }
    
    @IBAction func gotoLink(_ sender: Any) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let linkview : linkViewController = storyBoard.instantiateViewController(withIdentifier: "linkVC") as! linkViewController
        // viewController?.delegate = self
        self.present(linkview,animated: true, completion: nil)
        blureffect.isHidden = true

    }
    
    
    
    @IBAction func addtocancelBT(_ sender: UIButton) {
        self.blureffect.isHidden = false
        if addcardbt.currentImage == #imageLiteral(resourceName: "write_icon") {
            UIView.animate(withDuration: 0.2, animations: {
                self.writebt.center = self.writebtccenter
                self.linkbt.center = self.linkbtcenter
            })
        }
        else {
            UIView.animate(withDuration: 0.2, animations: {
                self.writebt.center = self.addcardbt.center
                self.linkbt.center = self.addcardbt.center
            })
        }
        if sender.currentImage == #imageLiteral(resourceName: "write_icon") {
            sender.setImage(#imageLiteral(resourceName: "cancel_con_B"), for: .normal)
        }
        else {
            sender.setImage(#imageLiteral(resourceName: "write_icon"), for: .normal)
            self.blureffect.isHidden = true
        }
    }
    
    /*
     
     var folderName = [String]()

    func makeFolderView(SaveMakeFolder text: String) {
        // print(text)
        self.folderName.append(text)
        self.tableView.reloadData()
    }
     var linkdataSG : Array<linkdata> = []

 */
    /*
 func linkcardView(SaveLink Title: String) {
        // print(text)
        
    }
*/
    
    func linkclose() {
        
    }



    
        
    }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


