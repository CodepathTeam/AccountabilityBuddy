//
//  biographyViewController.swift
//  AccountabilityBuddy
//
//  Created by Yanelys on 4/22/22.
//

import UIKit

class biographyViewController: UIViewController {

    
    @IBOutlet weak var bioTextField: UITextField!
    public var completionHandler: ((String?) -> Void)?
    
    
    
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

    
    
    
    @IBAction func onSave(_ sender: Any) {
        completionHandler?( bioTextField.text)
        
    
        dismiss(animated: true, completion: nil)
        
        
    }
    
    
    
    
}
