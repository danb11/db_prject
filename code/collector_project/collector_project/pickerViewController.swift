//
//  pickerViewController.swift
//  collector_project
//
//  Created by Danb on 2017. 2. 7..
//  Copyright © 2017년 Danb. All rights reserved.
//

import UIKit

class pickerViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {

    var locations = [String]()
    var selectedlocation : String = ""
    let vc = folderTableViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locations = ["iOS","Cook","Design","Color"]
        // Do any additional setup after loading the view.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return locations.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        selectedlocation = locations[row]
        return selectedlocation
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func cancelbt(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)

    }
    
    
    @IBAction func atlocation(_ sender: Any) {
        print(selectedlocation)
        vc.tableView.reloadSectionIndexTitles()
        self.dismiss(animated: true, completion: nil)
        dataName.append(selectedlocation)
    }
   
}
