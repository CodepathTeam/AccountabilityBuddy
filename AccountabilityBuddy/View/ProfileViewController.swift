//
//  ProfileViewController.swift
//  AccountabilityBuddy
//
//  Created by Yanelys on 4/2/22.
//




import UIKit
import Parse
import Foundation
import SwiftUI



@available(iOS 15.0, *)
@IBDesignable


class ProfileViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "progressTableView") as! progressTableView
        
        
        cell.youLabel.text = "You"
        cell.friendLabel.text = "Friend"
        cell.goalTitleField.text = "Goal"
        
        return cell
    
    }
    
    
   
    
    
    @IBOutlet weak var authorProfilePicture: UIImageView!
    
    @IBOutlet weak var authorLabel: UILabel!
    
    
    @IBOutlet weak var contactLabel: UILabel!
    
    @IBOutlet weak var progressTableView: UITableView!
    
    
    var imagePicker:UIImagePickerController!
    
    
   
    
    
    
    

    
    
    //This function is to make the image round + round margin+edit image
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        progressTableView.dataSource = self
        progressTableView.delegate = self
        
        
        
        
        //assign background
        assignbackground()
        
        
    
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
        
    
        
    

        
        
        
        
   }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        
         let query = PFQuery(className: "User")
         query.getFirstObjectInBackground { object, error in
            if error == nil{
                 if let userImage = object {
                 
                     let image:UIImage? = self.authorProfilePicture.image
                     
                     if image != nil{
                         
                         let imageData = image!.pngData()! as NSData
                         let file = PFFileObject(name: "someimage.png", data: imageData as Data)
                         userImage["profilephoto"] = file
                         userImage.saveInBackground(block: {(result,error) -> Void in
                             print("Done")
             
                         })
                     }
                     }
                 }
            }
        
//        let query = PFQuery(className: "User")
//        query.includeKey("objetId")
//        query.limit = 20
//
//        query.findObjectsInBackground { (users, error) in
//            if users != nil {
//                self.users = users!
//                self.tableView.reloadData()
//
//            }
//        }
        
    }
    
    
    
    
    
    
    
    @IBAction func onGoToBar(_ sender: Any) {
        let vc = UIHostingController(rootView: ProgressBar2SwiftUIView())
        present(vc, animated: true)
    }
    

    
    
    @objc func openImagePicker(_ sender:Any) {
           // Open Image Picker
        self.present(imagePicker, animated: true, completion: nil)
        
        
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
    
    
    //Can someone see any errors in my save button???
    
    @IBAction func saveChangesButton(_ sender: AnyObject) {

        
        
        
        
        let object = PFObject(className: "User")
        let imageData = authorProfilePicture.image!.pngData()
        let file = PFFileObject( name: "someimage.png", data: imageData!)
        object["UserImage"] = file
        
        
        object.saveInBackground{ (success, error) in
            if success {
                print("Saved")
                self.dismiss(animated: true, completion: nil)
            }else{
                print("error")
                
                
            }
        
        }
        
    }
    
}






@available(iOS 15.0, *)
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


