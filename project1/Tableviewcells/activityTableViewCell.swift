//
//  activityTableViewCell.swift
//  project1
//
//  Created by Asoooy on 11/01/2020.
//  Copyright © 2020 user162958. All rights reserved.
//

import UIKit

class activityTableViewCell: UITableViewCell {
    
    
    
    @IBOutlet weak var lbl: UILabel!
    
    

    @IBOutlet weak var img: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
