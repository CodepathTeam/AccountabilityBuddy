//
//  EditProfileViewController.swift
//  AccountabilityBuddy
//
//  Created by Yanelys on 4/8/22.
//

import UIKit
import CameraManager
import AlamofireImage

class EditProfileViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    
    @IBOutlet weak var biographyTextField: UITextField!
    
    @IBOutlet weak var imageSelectorView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onSaveButton(_ sender: Any) {
    }
    
    
    @IBAction func onCancelButton(_ sender: Any) {
    }
    
    
    @IBAction func onCameraButton(_ sender: Any) {
       let picker = UIImagePickerController()
        picker.delegate = self
        picker.allowsEditing = true
        if UIImagePickerController.isSourceTypeAvailable(.camera){
            picker.sourceType = .camera
        }else {
            picker.sourceType = .photoLibrary
        }
        present(picker, animated: true, completion: nil)
        
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = info[.editedImage] as! UIImage
        imageSelectorView.layer.borderWidth = 1
        imageSelectorView.layer.masksToBounds = false
        imageSelectorView.layer.borderColor = UIColor.black.cgColor
        imageSelectorView.layer.cornerRadius = imageSelectorView.frame.height/2
        imageSelectorView.clipsToBounds = true
        let size = CGSize(width: 300, height: 300)
        let scaledImage = image.af_imageScaled(to: size)
        
        imageSelectorView.image = scaledImage
        dismiss(animated: true, completion: nil)
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
