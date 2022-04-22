//
//  ContactsProfilePageView.swift
//  AccountabilityBuddy
//
//  Created by Yanelys on 4/22/22.
//

import UIKit

class ContactsProfilePageView: UIViewController {

    
    
    @IBOutlet weak var contactImage: UIImageView!
    
    @IBOutlet weak var ContactName: UILabel!
    
    @IBOutlet weak var OnSendRequest: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        assignbackground()
        
        contactImage.layer.borderWidth = 5
        contactImage.layer.masksToBounds = false
        contactImage.layer.borderColor = UIColor.white.cgColor
        contactImage.layer.cornerRadius = contactImage.frame.height/2
        
        contactImage.layer.cornerRadius = contactImage.bounds.height / 2
        contactImage.clipsToBounds = true
        
        
        
        // Do any additional setup after loading the view.
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

    
    
    
    
    
}
