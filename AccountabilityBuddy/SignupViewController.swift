//
//  SignupViewController.swift
//  AccountabilityBuddy
//
//  Created by Isaac on 4/2/22.
//

import UIKit
import Parse

class SignupViewController: UIViewController {
    
    @IBOutlet weak var userEmailField: UITextField!
    @IBOutlet weak var userFullNameField: UITextField!
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        assignbackground()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func onSignUp(_ sender: Any) {
        
        let user = PFUser()
        user.email = userEmailField.text
        user["fullName"] = userFullNameField.text
        user.username = usernameField.text
        user.password = passwordField.text
        
        user.signUpInBackground { (success, error) in
            if success {
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
            } else {
                print ("Error: \(String(describing: error?.localizedDescription))")
            }
        }
        
    }
    
    func assignbackground(){
            let background = UIImage(named: "background.png")

            var imageView : UIImageView!
            imageView = UIImageView(frame: view.bounds)
        imageView.contentMode =  UIView.ContentMode.scaleAspectFill
            imageView.clipsToBounds = true
            imageView.image = background
            imageView.center = view.center
            view.addSubview(imageView)
            self.view.sendSubviewToBack(imageView)
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
