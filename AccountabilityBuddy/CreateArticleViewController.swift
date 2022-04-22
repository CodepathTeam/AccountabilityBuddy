//
//  createArticleViewController.swift
//  AccountabilityBuddy
//
//  Created by Isaac Tadele Beyene on 4/22/22.
//

import UIKit
import Parse

class CreateArticleViewController: UIViewController {
    
    
    @IBOutlet weak var articleSection: UITextField!
    @IBOutlet weak var articleContent: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        assignbackground()
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
    
    
    @IBAction func onCreateArticle(_ sender: Any) {
        
        let forum = PFObject(className: "Forum")
        
        forum["Title"] = articleSection.text
        forum["Content"] = articleContent.text
        
        self.dismiss(animated: true, completion: nil)
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
