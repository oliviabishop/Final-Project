//
//  ContactsViewController.swift
//  FinalProject
//
//  Created by Olivia Bishop on 12/6/19.
//  Copyright © 2019 Olivia Bishop. All rights reserved.
//

import UIKit

class ContactsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func emailButtonWasClicked(_ sender: Any) {
        
        UIApplication.shared.open(URL(string: "https://www.google.com/gmail/about/")! as URL, options: [:] , completionHandler: nil)
        
    }
 
    
    
    @IBAction func phoneNumberWasClicked(_ sender: Any) {
        
          UIApplication.shared.open(URL(string: "https://upload.wikimedia.org/wikipedia/commons/3/34/Nokia_3310_3G_%2820180116%29.jpg")! as URL, options: [:] , completionHandler: nil)
        
    }
    
    
    @IBAction func instagramWasClicked(_ sender: Any) {
        
        UIApplication.shared.open(URL(string: "https://www.instagram.com/?hl=en")! as URL, options: [:] , completionHandler: nil)
        
    }
    
    
    
    @IBAction func linkedinWasClicked(_ sender: Any) {
        
        UIApplication.shared.open(URL(string: "https://www.linkedin.com")! as URL, options: [:] , completionHandler: nil)    }
    
    }
