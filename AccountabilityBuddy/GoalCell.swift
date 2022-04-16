//
//  GoalCell.swift
//  AccountabilityBuddy
//
//  Created by E. Vi on 4/15/22.
//

import UIKit
import Parse

class GoalCell: UITableViewCell {

    
    @IBOutlet weak var goalTitleLabel: UILabel!
    
    @IBOutlet weak var currentUserLabel: UILabel!
    
    @IBOutlet weak var goalDescriptLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
