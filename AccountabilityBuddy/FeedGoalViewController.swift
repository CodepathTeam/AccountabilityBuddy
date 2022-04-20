//
//  FeedGoalViewController.swift
//  AccountabilityBuddy
//
//  Created by G. Viho on 4/19/22.
//

import UIKit
import Parse

class FeedGoalViewController: UIViewController {
    
    @IBOutlet weak var myGoalTitleField: UITextField!
    

    @IBOutlet weak var myGoalDescriptField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func onSubmitMyButton(_ sender: Any) {
        let goal = PFObject(className: "Goals")
        
        goal["title"] = myGoalTitleField.text
        
        
        goal["description"] = myGoalDescriptField.text
        
        goal["member"] = PFUser.current()
        
        goal.saveInBackground {(success, error) in
            if success {
                self.dismiss(animated: true, completion: nil)
                print("Saved!")
            }else {
                print("error!")
            }
            
        }
        
        
        
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
