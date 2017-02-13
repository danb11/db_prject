//
//  imgTableViewCell.swift
//  collector_project
//
//  Created by Danb on 2017. 2. 8..
//  Copyright © 2017년 Danb. All rights reserved.
//

import UIKit

class imgTableViewCell: UITableViewCell {

    
    @IBOutlet weak var addIMG: UIImageView!
    @IBOutlet weak var addLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
