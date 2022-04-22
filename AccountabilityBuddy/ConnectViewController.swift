//
//  ConnectViewController.swift
//  AccountabilityBuddy
//
//  Created by Isaac on 4/2/22.
//

import UIKit
import Parse


class ConnectViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var users = [PFObject]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let query = PFQuery(className: "User")
        query.includeKey("objetId")
        query.limit = 20
        
        
        
        query.findObjectsInBackground { (users, error) in
            if users != nil {
                self.users = users!
                self.tableView.reloadData()
                
            }
            
            print("The number of users is \(String(describing: users?.count))")
                   
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        print("the method is running")
//        print("\(users)")
        let cell = tableView.dequeueReusableCell(withIdentifier: "ConnectCell") as! ConnectCell
        
        print(users[indexPath.row]["objectId"] as? String)
        
        cell.profileName.text = users[indexPath.row]["objectId"] as? String
        
        return cell
        
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
