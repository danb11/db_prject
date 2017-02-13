//
//  folderTableViewCell.swift
//  collector_project
//
//  Created by Danb on 2017. 2. 9..
//  Copyright © 2017년 Danb. All rights reserved.
//

import UIKit

class folderTableViewCell: UITableViewCell {

    @IBOutlet weak var addfoldername: UILabel!
    @IBOutlet weak var addfolderIMG: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
