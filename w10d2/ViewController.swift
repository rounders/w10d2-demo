//
//  ViewController.swift
//  w10d2
//
//  Created by Francois Harbec on 2017-05-15.
//  Copyright © 2017 Francois Harbec. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var dontFailMeLabel: UILabel!

    @IBAction func imageDoubleTapped(_ sender: UITapGestureRecognizer) {
        
        print("double tapped image")
//        UIView.animate(withDuration: 0.75, delay: 0, options: [], animations: { 
//            self.dontFailMeLabel.center.y = self.view.center.y
//        }) { (success) in
//            
//            
//            UIView.animate(withDuration: 0.75, delay: 0, options: [], animations: { 
//                self.dontFailMeLabel.alpha = 0
//                self.dontFailMeLabel.transform = CGAffineTransform(scaleX: 5.0, y: 5.0)
//            }, completion: { (success) in
//                self.dontFailMeLabel.center.y = -100
//                self.dontFailMeLabel.center.x = self.view.center.x
//                self.dontFailMeLabel.alpha = 1
//                self.dontFailMeLabel.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
//                
//            })
//            
//        }
        
        
        UIView.animateKeyframes(withDuration: 1.5, delay: 0, options: .calculationModeLinear, animations: {
            
            
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.5, animations: {
                self.dontFailMeLabel.center.y = self.view.center.y
            })
            
            UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.5, animations: {
                self.dontFailMeLabel.alpha = 0
                self.dontFailMeLabel.transform = CGAffineTransform(scaleX: 5.0, y: 5.0)
            })
        }) { (success) in
            self.dontFailMeLabel.alpha = 1.0
            self.dontFailMeLabel.center.y = -100
            self.dontFailMeLabel.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        }

        
        
    }
    
    
    @IBAction func imageSwipedUp(_ sender: UISwipeGestureRecognizer) {
        
        print("image swiped up")
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dontFailMeLabel.center.y = -100
        dontFailMeLabel.center.x = view.center.x
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

