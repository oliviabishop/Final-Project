//
//  Posts.swift
//  FinalProject
//
//  Created by Olivia Bishop on 12/5/19.
//  Copyright © 2019 Olivia Bishop. All rights reserved.
//

import Foundation

class Posts {

    class func get() -> [Post] {
        
        var posts = [Post]()
        let postsURL = FileManager.default.urls(for:.documentDirectory , in: .userDomainMask)[0]
        
        if let urls = try? FileManager.default.contentsOfDirectory(at: postsURL, includingPropertiesForKeys: nil) {
            
            for url in urls {
            let title = url.lastPathComponent
            if let attributes = try? FileManager.default.attributesOfItem(atPath: url.path),
            let date = attributes[FileAttributeKey.creationDate] as? Date {
                posts.append(Post(title: title, url: url, date: date))
                
            }
        }
        
    }
     
   return posts
    
}

    class func delete(url: URL) {
        try? FileManager.default.removeItem(at: url)
}

    class func save(title: String, content: String) {
           let postsURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
           let url = postsURL.appendingPathComponent(title)

           try? content.write(to: url, atomically: true, encoding: .utf8)
       }
    
    
    

}
