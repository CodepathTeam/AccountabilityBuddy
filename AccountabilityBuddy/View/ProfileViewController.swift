//
//  ProfileViewController.swift
//  AccountabilityBuddy
//
//  Created by Isaac on 4/2/22.
//



//import SwiftUI
import UIKit
//@available(iOS 15.0, *)
@IBDesignable

class ProfileViewController: UIViewController {
    
    
    @IBOutlet weak var authorProfilePicture: UIImageView!
    
    @IBOutlet weak var authorLabel: UILabel!
    
    @IBOutlet weak var biographyLabel: UILabel!
    
    
    //This function is to make the image round
    override func viewDidLoad() {
       super.viewDidLoad()

       authorProfilePicture.layer.borderWidth = 1
        authorProfilePicture.layer.masksToBounds = false
        authorProfilePicture.layer.borderColor = UIColor.black.cgColor
        authorProfilePicture.layer.cornerRadius = authorProfilePicture.frame.height/2
        authorProfilePicture.clipsToBounds = true
   }
        // Do any additional setup after loading the view.
        
        
    
       // extractView()

}
    //GRADIENT BACKGROUND
    
    
        
    
    
    
    
    
    
    
    
    
    
    
    //
  /*  //extracting SwiftUI to UIKit
    func extractView(){
        
            let hostView = UIHostingController(rootView: ProfileHeader())
        hostView.view.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(hostView.view)
        
        //Constrains...
        //Clipping
        let constraints = [
        
            hostView.view.topAnchor.constraint(equalTo: view.topAnchor),
            hostView.view.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            hostView.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            hostView.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            //Height and width...
            hostView.view.widthAnchor.constraint(equalTo: view.widthAnchor),
            hostView.view.heightAnchor.constraint(equalTo: view.heightAnchor),
            
        
        ]
        self.view.addConstraints(constraints)
        
       
            // Fallback on earlier versions
        
        
    } */
    
    
    

