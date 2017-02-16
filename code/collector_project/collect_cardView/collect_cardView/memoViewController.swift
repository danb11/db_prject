//
//  memoViewController.swift
//  collect_cardView
//
//  Created by Danb on 2017. 2. 15..
//  Copyright © 2017년 Danb. All rights reserved.
//

import UIKit

class memoViewController: UIViewController {
    
    @IBOutlet weak var memotitleTF: UITextField!
    
    @IBOutlet weak var memosubTF: UITextView!
    
    var memodatasource : memodata
    
    required init?(coder aDecoder: NSCoder) {
        memodatasource = memodata()
        super.init(coder: aDecoder)
    }
    
    @IBAction func memo_saveBT(_ sender: Any) {
        memodatasource.memotitle = memotitleTF.text!
        memodatasource.memosub = memosubTF.text!
        //print(memodatasource.memotitle)
    }
    
    @IBAction func backBT(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }


    
    override func viewDidLoad() {
        super.viewDidLoad()

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
