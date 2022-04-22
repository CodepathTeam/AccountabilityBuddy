//
//  progressTableView.swift
//  AccountabilityBuddy
//
//  Created by Yanelys on 4/21/22.
//

import UIKit
import SwiftUI



class progressTableView: UITableViewCell{

    
    @IBOutlet weak var friendLabel: UILabel!
    
    @IBOutlet weak var youLabel: UILabel!
    
    
    @IBOutlet weak var goalTitleField: UILabel!
    
    @IBOutlet weak var yourProgressView: UIProgressView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
        
        
    }
    
    
   
    
    
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }


}
