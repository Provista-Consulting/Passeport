//
//  Thumbnail.swift
//  NovoMixPasseportSwift
//
//  Created by Fethi El Hassasna on 3/15/15.
//  Copyright (c) 2015 Fethi El Hassasna. All rights reserved.
//

import UIKit

protocol ThumbnailDelegate {
    
    // Methods signatures
    func deselectAllThumbnails ()
    func updateScrollView ()
}

class Thumbnail: UIView {
        
    @IBOutlet weak var image: UIImageView!
    
    var delegate : ThumbnailDelegate?
    
    var isSelected : Bool = false
    
    @IBAction func click(sender: AnyObject) {
        
        delegate?.deselectAllThumbnails()
        
        self.isSelected = true
        
        if (self.isSelected) {
            self.layer.borderWidth = 5.0
        } else {
            self.layer.borderWidth = 1.0
        }
        
        delegate?.updateScrollView()
    }
    
    func setUp() {
        
        self.layer.cornerRadius = 10.0
        self.layer.masksToBounds = true
        self.layer.borderColor = UIColor.flatSkyBlueColor().CGColor
        self.layer.borderWidth = 1.0
        
    }
    
}
