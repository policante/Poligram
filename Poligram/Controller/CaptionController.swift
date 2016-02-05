//
//  CaptionController.swift
//  Poligram
//
//  Created by Rodrigo Martins on 2/4/16.
//  Copyright © 2016 Martins. All rights reserved.
//

import UIKit

protocol CaptionDelegate {
    func captionController(controller: CaptionController, didFinishWithCaption caption: String)
}

class CaptionController: UIViewController {
    @IBOutlet weak var captionText:UITextView!
    @IBOutlet weak var imagePreview:UIImageView!
    var selectedImage: UIImage!
    var delegate: CaptionDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePreview.image = selectedImage
    }
    
    @IBAction func tap(sender: UITapGestureRecognizer!){
        captionText.resignFirstResponder()
    }
    
    @IBAction func submitPressed(sender:UIButton!){
        if let captionDelegate = self.delegate {
            captionDelegate.captionController(self, didFinishWithCaption: captionText.text)
        }
    }
    
    @IBAction func backPressed(sender:UIButton!){
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
}
