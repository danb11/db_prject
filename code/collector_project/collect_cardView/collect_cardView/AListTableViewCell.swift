//
//  AListTableViewCell.swift
//  collect_cardView
//
//  Created by Danb on 2017. 2. 13..
//  Copyright © 2017년 Danb. All rights reserved.
//

import UIKit

class AListTableViewCell: UITableViewCell {
   // var textMain: String = ""
   // var textSub: String = ""

    @IBOutlet weak var cardTitle: UILabel!
    
    @IBOutlet weak var cardIMG: UIImageView!
    
    @IBOutlet weak var cardSub: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
       // print(cardTitle.text)
        // Configure the view for the selected state
    }
    
    
    /*
    override func layoutSubviews() {
        super.layoutSubviews()
        self.cardTitle.text = textMain
        self.cardSub.text = textSub
    }
 */

}
