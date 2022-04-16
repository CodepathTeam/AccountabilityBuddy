//
//  ProfileViewController.swift
//  AccountabilityBuddy
//
//  Created by Isaac on 4/2/22.
//



//import SwiftUI
import UIKit
import Parse
import Foundation

//@available(iOS 15.0, *)
@IBDesignable

class ProfileViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    
    var userImage = [PFObject]()
     
    
    @IBOutlet weak var authorProfilePicture: UIImageView!
    
    @IBOutlet weak var authorLabel: UILabel!
    
    @IBOutlet weak var biographyLabel: UILabel!
    
    
    @IBOutlet var tapEditProfilePicture: UITapGestureRecognizer!
    
    
    
    
    
    var imagePicker:UIImagePickerController!
    
    
    
    
    
    
    
    //This function is to make the image round + round margin
    override func viewDidLoad() {
       super.viewDidLoad()

       authorProfilePicture.layer.borderWidth = 5
        authorProfilePicture.layer.masksToBounds = false
        authorProfilePicture.layer.borderColor = UIColor.white.cgColor
        authorProfilePicture.layer.cornerRadius = authorProfilePicture.frame.height/2
        authorProfilePicture.clipsToBounds = true
        
        
        
        imagePicker = UIImagePickerController()
        imagePicker.allowsEditing = true
        imagePicker.sourceType = .photoLibrary
        imagePicker.delegate = self
        
        
        
        let imageTap = UITapGestureRecognizer(target: self, action: #selector(openImagePicker))
               authorProfilePicture.isUserInteractionEnabled = true
        authorProfilePicture.addGestureRecognizer(imageTap)
        authorProfilePicture.layer.cornerRadius = authorProfilePicture.bounds.height / 2
        authorProfilePicture.clipsToBounds = true
        tapEditProfilePicture.addTarget(self, action: #selector(getter: authorProfilePicture))
        
        
   }
    @objc func openImagePicker(_ sender:Any) {
           // Open Image Picker
        self.present(imagePicker, animated: true, completion: nil)
        
       }

    func imagePickerControllerDidCancel(_ picker: UIImagePickerController){
        picker.dismiss( animated: true, completion: nil)
        
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info:[String : Any]){
        
        if let pickerImage = info[UIImagePickerController.InfoKey.editedImage.rawValue] as? UIImage{
            
            authorProfilePicture.image = pickerImage
            
            
        }
        
        picker.dismiss(animated: true, completion: nil)
    }
    
}

        // Do any additional setup after loading the view.
        
        
    
       // extractView()


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
    
    
    

