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

@available(iOS 15.0, *)
@IBDesignable


class ProfileViewController: UIViewController {
    
    var userImage = [PFObject]()
     
    
    @IBOutlet weak var authorProfilePicture: UIImageView!
    
    @IBOutlet weak var authorLabel: UILabel!
    
    @IBOutlet weak var biographyLabel: UILabel!
    
    
    
    var imagePicker:UIImagePickerController!
    
    
    
    
    
    //This function is to make the image round + round margin+edit image
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
        imagePicker = UIImagePickerController()
        imagePicker.allowsEditing = true
        imagePicker.sourceType = .photoLibrary
        imagePicker.delegate = self
        
      
        
        let imageTap = UITapGestureRecognizer(target: self, action: #selector(openImagePicker))
        authorProfilePicture.layer.borderWidth = 5
        authorProfilePicture.layer.masksToBounds = false
        authorProfilePicture.layer.borderColor = UIColor.white.cgColor
        authorProfilePicture.layer.cornerRadius = authorProfilePicture.frame.height/2
        authorProfilePicture.isUserInteractionEnabled = true
        authorProfilePicture.addGestureRecognizer(imageTap)
        authorProfilePicture.layer.cornerRadius = authorProfilePicture.bounds.height / 2
        authorProfilePicture.clipsToBounds = true
        
        //taptoEditbutton.addTarget(self, action: #selector(self.openImagePicker),for: .touchUpInside)
        
        
   }
    @objc func openImagePicker(_ sender:Any) {
           // Open Image Picker
        self.present(imagePicker, animated: true, completion: nil)
        
        
        
       }
}





extension ProfileViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss( animated: true, completion: nil)
        
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info:[UIImagePickerController.InfoKey : Any]){
        
        if let pickedImage = info[UIImagePickerController.InfoKey.editedImage] as? UIImage{
              
          
            self.authorProfilePicture.image = pickedImage
            
            
        }
        
        picker.dismiss(animated: true, completion: nil)
    }
    
}
