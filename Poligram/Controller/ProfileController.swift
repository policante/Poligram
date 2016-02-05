//
//  ProfileController.swift
//  Poligram
//
//  Created by Rodrigo Martins on 2/3/16.
//  Copyright © 2016 Martins. All rights reserved.
//

import UIKit

class ProfileController: UIViewController{
    @IBOutlet weak var profilePic: UIImageView!
    @IBOutlet weak var postLabel: UILabel!
    @IBOutlet weak var followersLabel: UILabel!
    @IBOutlet weak var followingLabel: UILabel!
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        if let currentUser = Profile.currentUser {
            self.navigationItem.title = currentUser.username
            
            self.postLabel.text = "\(currentUser.posts.count)"
            self.followersLabel.text = "\(currentUser.followers.count)"
            self.followingLabel.text = "\(currentUser.following.count)"
            
            if let picture = currentUser.picture {
                self.profilePic.image = picture
            }
            
        } else {
            print("No user logged")
        }
    }
    
    @IBAction func editProfile(sender: AnyObject) {
        print("Edit profile")
    }
}
