//
//  MessageTableViewCell.swift
//  Parse Chat
//
//  Created by samman on 3/4/17.
//  Copyright © 2017 samman. All rights reserved.
//

import UIKit

class MessageTableViewCell: UITableViewCell {

    
    @IBOutlet weak var messageLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}