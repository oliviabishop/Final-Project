//
//  PostsViewController.swift
//  FinalProject
//
//  Created by Olivia Bishop on 12/6/19.
//  Copyright © 2019 Olivia Bishop. All rights reserved.
//

import UIKit

class PostsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var postsTableView: UITableView!
    
    var posts = [Post]()
    let dateFormatter = DateFormatter()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle =  .none
        
    }
    

    override func viewWillAppear(_ animated: Bool) {
        posts = Posts.get()
        postsTableView.reloadData()
    }

    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int ) -> Int {
        return posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "blogPost", for: indexPath)
         if let cell = cell as? PostTableViewCell {
                   let post = posts[indexPath.row]
                   cell.titleLabel.text = post.title
                   cell.dateLabel.text = dateFormatter.string(from: post.date)
        }
        
        return cell
    }
    
  
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let delete = UIContextualAction(style: .destructive, title: "Delete") { (action, sourceView, completionHandler) in
            completionHandler(true)
        }
        let swipeAction = UISwipeActionsConfiguration(actions: [delete])
        swipeAction.performsFirstActionWithFullSwipe = false
        let post = self.posts[indexPath.row]
           Posts.delete(url: post.url)
         self.posts = Posts.get()
            self.postsTableView.deleteRows(at: [indexPath], with: .fade)
        
        return swipeAction
        
    }
    
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           if segue.identifier == "viewPost" {
               if let destination = segue.destination as? singlePostViewController,
                   let row = postsTableView.indexPathForSelectedRow?.row {
                   destination.post = posts[row]
               }
           }
       }
    
    
    
}
                   
                   
                   
                 
    
    

