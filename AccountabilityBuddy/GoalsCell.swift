//
//  GoalsCell.swift
//  AccountabilityBuddy
//
//  Created by G. Viho on 4/19/22.
//

import UIKit

class GoalsCell: UITableViewCell {

    
    @IBOutlet weak var goalUserLabel: UILabel!
    
    @IBOutlet weak var myGoalDescriptLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
