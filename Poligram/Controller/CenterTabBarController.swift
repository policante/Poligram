//
//  CenterTabBarController.swift
//  Poligram
//
//  Created by Rodrigo Martins on 2/3/16.
//  Copyright © 2016 Martins. All rights reserved.
//

import UIKit

class CenterTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.tintColor = UIColor.whiteColor()
        tabBar.barTintColor = UIColor(white: 0.25, alpha: 1)
        tabBar.translucent = false
        
        let centerButton = UIButton(type: .Custom)
        let buttonImage = UIImage(named: "camera")
        let numTabs = self.viewControllers!.count
        
        
        if buttonImage != nil {
            let screenWidth = UIScreen.mainScreen().bounds.size.width
            centerButton.frame = CGRectMake(0, 0, screenWidth / CGFloat(numTabs), self.tabBar.frame.size.height)
            centerButton.setImage(buttonImage, forState: .Normal)
            centerButton.tintColor = UIColor.whiteColor()
            centerButton.backgroundColor = UIColor(red: 18/255.0, green: 86/255.0, blue: 136/255.0, alpha: 1.0)
            
            centerButton.addTarget(self, action: "showCamera:", forControlEvents: .TouchUpInside)
            centerButton.center = self.tabBar.center
            self.view.addSubview(centerButton)
        }
        
    }
    
    func showCamera(sender: UIButton!){
        let mainStoryboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
        let cameraPicker = mainStoryboard.instantiateViewControllerWithIdentifier("CameraPopup")
        self.presentViewController(cameraPicker, animated: true, completion: nil)
    }
    
}