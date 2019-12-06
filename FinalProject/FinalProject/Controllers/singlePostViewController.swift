//
//  singlePostViewController.swift
//  FinalProject
//
//  Created by Olivia Bishop on 12/6/19.
//  Copyright © 2019 Olivia Bishop. All rights reserved.
//

import UIKit

class singlePostViewController: UIViewController {
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var postTextView: UITextView!
    
    var post: Post?

    override func viewDidLoad() {
        super.viewDidLoad()
        
}
    
    @IBAction func save(_ sender: Any) {
        
        guard let post = titleTextField.text else {
            return
        }
        
        Posts.save(title: post, content: postTextView.text)
        
        navigationController?.popViewController(animated: true)
        
        
    }
    
        
    }
    
    


