//
//  PTableViewCell.swift
//  TableView2
//
//  Created by macbook on 27/09/18.
//  Copyright © 2018 iosLab. All rights reserved.
//

import UIKit

class PTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var imageCell: UIImageView!
    @IBOutlet weak var labelCell: UILabel!	

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
