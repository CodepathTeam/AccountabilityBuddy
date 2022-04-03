//
//  SearchCell.swift
//  AccountabilityBuddy
//
//  Created by Isaac on 4/2/22.
//

import UIKit

class SearchCell: UITableViewCell {
    
    
    @IBOutlet weak var userProfilePicture: UIImageView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
