//
//  ForumViewController.swift
//  AccountabilityBuddy
//
//  Created by Isaac on 4/2/22.
//

import UIKit
import Parse

class ForumViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var forums = [PFObject]()
    var forumCatagoryList = ["Finance", "Health", "Career", "Relationship"]
    var forumList = [[String]]()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        self.createForumList()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let query = PFQuery(className: "Forum")
        //query.includeKeys(["Title", "Content"])
        query.limit = 20
        
        query.findObjectsInBackground { (forumlist, error) in
            if forumlist != nil {
                self.forums = forumlist!
                self.createForumList()
                self.tableView.reloadData()
                
            }
        }
    }
    
    
    func createForumList(){
        
        forumList = []
        
        for i in 0...forumCatagoryList.count-1{
            forumList.append([])
            forumList[i].append("x")
        }
        

        for forum in forums{
            
            let catagoryIndex = forumCatagoryList.firstIndex(of: forum["Title"] as! String)
            
            forumList[catagoryIndex!].append(forum["Content"] as! String)

        }
        
        print(forumList.count)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return forumCatagoryList.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return forumList[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let forumCatagory = forumCatagoryList[indexPath.section]
            
        
        
        if indexPath.row == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "ForumCategoryCell") as! ForumCategoryCell
            
            
            cell.forumCatagoryName.text = forumCatagory
            
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "ForumCell") as! ForumCell
            
            cell.forumText.text = forumList[indexPath.section][indexPath.row]
            
            return cell
        }
        
        
    }
    

/*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        //Finding the selected movie
        let cell = sender as! UITableViewCell
        let indexPath = tableView.indexPath(for: cell)!
        let article = forums[indexPath.row]
        
        //Passing the selected movie to MovieDetail
        let fullAtricle = segue.destination as! FullArticleViewController
        fullAtricle.article = article
        
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
 */

 }
