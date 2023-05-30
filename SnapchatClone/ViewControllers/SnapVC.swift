//
//  SnapVC.swift
//  SnapchatClone
//
//  Created by Şevval Mertoğlu on 23.05.2023.
//

import UIKit
import ImageSlideshow

class SnapVC: UIViewController {

    
    @IBOutlet weak var timeLabel: UILabel!
    
    var selectedSnap : Snap?
    var inputArray = [KingfisherSource]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        if let snap = selectedSnap {
            
            timeLabel.text = "Time left: \(snap.timeDifference)"
         
            
            for imageUrl in snap.imageUrlArray {
                inputArray.append(KingfisherSource(urlString: imageUrl)!)
            }
            
        }
            
        let imageSlideShow = ImageSlideshow(frame: CGRect(x: 10, y: 10, width: self.view.frame.width * 0.95, height: self.view.frame.height * 0.9))
        imageSlideShow.backgroundColor = UIColor.white
        
        
        let pageIndicator = UIPageControl()
        pageIndicator.currentPageIndicatorTintColor = UIColor.systemPink
        pageIndicator.pageIndicatorTintColor = UIColor.lightGray
        imageSlideShow.pageIndicator = pageIndicator
        
        
        
        imageSlideShow.contentScaleMode = UIViewContentMode.scaleAspectFit
        imageSlideShow.setImageInputs(inputArray)
        self.view.addSubview(imageSlideShow)
        self.view.bringSubviewToFront(timeLabel) //selected view will always be shown in front
            
            
        
        
    }
    

    

}
