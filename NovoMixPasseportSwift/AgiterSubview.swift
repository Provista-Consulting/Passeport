//
//  AgiterSubview.swift
//  NovoMixPasseportSwift
//
//  Created by Fethi El Hassasna on 5/6/15.
//  Copyright (c) 2015 Fethi El Hassasna. All rights reserved.
//

import UIKit

class AgiterSubview: UIView {

    @IBOutlet weak var playVideoContainer: UIView!
    var buttonPlayVideo : buttonMenu!
        
    func load() {
        
        // Add Play video button
        
        self.buttonPlayVideo = NSBundle.mainBundle().loadNibNamed("buttonMenu", owner: self, options: nil)[0] as! buttonMenu
        self.buttonPlayVideo.active = true
        self.buttonPlayVideo.labelNumber.text = "▶︎"
        self.buttonPlayVideo.labelNumber.font = self.buttonPlayVideo.labelNumber.font.fontWithSize(18)
        self.buttonPlayVideo.labelTitle.text = "Vidéo"
        self.buttonPlayVideo.button.tag = 0
        self.buttonPlayVideo.button.addTarget(self, action: "click:", forControlEvents: UIControlEvents.TouchUpInside)
        self.playVideoContainer.addSubview(self.buttonPlayVideo)
    }
    
    @IBAction func click (sender: AnyObject!) {
        
        //println("Coucou")
    
    }
}
