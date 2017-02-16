//
//  MemoTextViewController.swift
//  collect_cardView
//
//  Created by Danb on 2017. 2. 13..
//  Copyright © 2017년 Danb. All rights reserved.
//

import UIKit

class detailViewController: UIViewController {
    
    @IBOutlet weak var detaildefaultIMG: UIImageView!


    @IBAction func detailbackBT(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.detaildefaultIMG.image = #imageLiteral(resourceName: "default_image")
       // self.linkdefaultIMG.image = #imageLiteral(resourceName: "add_defaultIMG")
        

        // Do any additional setup after loading the view.
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
