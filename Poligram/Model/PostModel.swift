//
//  PostModel.swift
//  Poligram
//
//  Created by Rodrigo Martins on 2/3/16.
//  Copyright © 2016 Martins. All rights reserved.
//

import UIKit

class Post{
    let creator:String
    let timestamp:NSDate
    let image:UIImage?
    let caption:String?
    
    static var feed:Array<Post>?
    
    init(creator: String, image: UIImage?, caption: String?) {
        self.creator = creator
        self.image = image
        self.caption = caption
        self.timestamp = NSDate()
    }
}

class PostCell: UITableViewCell {
    @IBOutlet weak var captionLabel: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var starButton: UIButton!
    
    @IBAction func starPressed(sender: UIButton!){
        print("star pressed")
    }
}

class PostHeaderCell: UITableViewCell {
    @IBOutlet weak var profilePicture: UIImageView!
    @IBOutlet weak var usernameButton: UIButton!
}
