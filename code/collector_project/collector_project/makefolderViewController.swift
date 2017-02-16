//
//  makefolderViewController.swift
//  collector_project
//
//  Created by Danb on 2017. 2. 8..
//  Copyright © 2017년 Danb. All rights reserved.
//

import UIKit

//var locations = [String]()
//var selectedlocation : String = ""

protocol MakeFolderDelegate {
    func makeFolderView(SaveMakeFolder text : String)
    func makeFolderViewClose()
}


class makefolderViewController: UIViewController {

    @IBOutlet weak var folderNameTF: UITextField!
    @IBOutlet weak var tagTF: UITextField!
    
    var delegate : MakeFolderDelegate? = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }

    @IBAction func makefolderCloseBT(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        
        if let theDelegate = self.delegate {
            theDelegate.makeFolderViewClose()
        }
        
    }
    
    @IBAction func folderSaveBT(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        
        if let theDelegate = self.delegate {
            theDelegate.makeFolderView(SaveMakeFolder: (folderNameTF.text!))
        }

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
