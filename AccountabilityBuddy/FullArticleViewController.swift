//
//  FullArticleViewController.swift
//  AccountabilityBuddy
//
//  Created by Isaac Tadele Beyene on 4/22/22.
//

import UIKit
import Parse

class FullArticleViewController: UIViewController {
    
    var article: [String:Any]!
    
    @IBOutlet weak var articleTitle: UILabel!
    @IBOutlet weak var articleContent: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
