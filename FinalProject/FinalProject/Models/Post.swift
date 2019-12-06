//
//  Post.swift
//  FinalProject
//
//  Created by Olivia Bishop on 12/5/19.
//  Copyright © 2019 Olivia Bishop. All rights reserved.
//

import Foundation

struct Post {
    let title: String
    let url: URL
    let date: Date
    
    
     var content: String? {
           get {
               return try? String(contentsOf: url, encoding: .utf8)
           }
       }
}

