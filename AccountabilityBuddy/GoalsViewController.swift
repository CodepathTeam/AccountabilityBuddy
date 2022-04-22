//
//  GoalsViewController.swift
//  AccountabilityBuddy
//
//  Created by Isaac on 4/2/22.
//
import UIKit
import Parse


class GoalsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var mygoals = [PFObject]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        self.tableView.reloadData()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let query = PFQuery(className: "Goals")
        query.includeKey("member")
        query.limit = 20
        
        query.findObjectsInBackground { (mygoals, error) in
            if mygoals != nil {
                self.mygoals = mygoals!
                self.tableView.reloadData()
                
            }
        }
        self.tableView.reloadData()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mygoals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GoalsCell") as! GoalsCell
        
        let mygoal = mygoals[indexPath.row]
        
        let myuser = mygoal["member"] as! PFUser
        cell.goalUserLabel.text = myuser["fullName"] as? String
        cell.myGoalDescriptLabel.text = mygoal["title"] as? String
        
        print ( mygoal["description"]! )
        return cell
    }
    
    /*
    // MARK: - Navigation
​
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}
