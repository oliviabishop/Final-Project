//
//  PhotosViewController.swift
//  FinalProject
//
//  Created by Olivia Bishop on 12/6/19.
//  Copyright © 2019 Olivia Bishop. All rights reserved.
//

import UIKit

class PhotosViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var photosPageControl: UIPageControl!
    @IBOutlet weak var photosScrollView: UIScrollView!
    
    var photos: [String] = ["0","1","2","3","4","5"]
    var frame = CGRect(x:0, y:0, width:0, height:0)
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        photosPageControl.numberOfPages = photos.count
        for index in 0..<photos.count {
            
            frame.origin.x = photosScrollView.frame.size.width * CGFloat(index)
            frame.size = photosScrollView.frame.size
            
            let photoImageView = UIImageView(frame: frame)
            photoImageView.image = UIImage(named: photos[index])
            self.photosScrollView.addSubview(photoImageView)
            }
        photosScrollView.contentSize = CGSize(width: (photosScrollView.frame.size.width  * CGFloat(photos.count)), height: photosScrollView.frame.size.height)
        
        photosScrollView.delegate = self
        
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        
        let pageNumber = photosScrollView.contentOffset.x / photosScrollView.frame.size.width
        
        photosPageControl.currentPage = Int(pageNumber)
    }
  

}
