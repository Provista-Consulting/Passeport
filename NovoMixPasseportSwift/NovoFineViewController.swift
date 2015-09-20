//
//  NovoFineViewController.swift
//  NovoMixPasseportSwift
//
//  Created by Fethi El Hassasna on 5/14/15.
//  Copyright (c) 2015 Fethi El Hassasna. All rights reserved.
//

import UIKit
import MediaPlayer

class NovoFineViewController: UIViewController {
    
    var titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 400, height: 44))
    
    var moviePlayer : MPMoviePlayerController?
    
    var french = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        createNavigationStyle()
        
        var frame = CGRectZero
        
        if (UIDevice.currentDevice().systemVersion as NSString).floatValue < 8.0 {
            frame = CGRectMake(0.0, 0.0, 1024, 768)
            self.view.frame = frame
        }
        
        let path = NSBundle.mainBundle().pathForResource("novofine", ofType:"mp4")!
        let url = NSURL.fileURLWithPath(path)
        
        moviePlayer = MPMoviePlayerController(contentURL: url)
        
        if let player = moviePlayer {
            
            player.view.frame = self.view.bounds
            player.prepareToPlay()
            player.scalingMode = .AspectFit
            self.view.addSubview(player.view)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
        if let player = moviePlayer {
            
            player.stop()
            player.view.removeFromSuperview()
            moviePlayer = nil
        }
        
    }
    
    func createNavigationStyle () {
        
        self.titleLabel.backgroundColor = UIColor.clearColor()
        self.titleLabel.adjustsFontSizeToFitWidth = true
        self.titleLabel.textColor = UIColor.blackColor()
        self.titleLabel.textAlignment = .Center
        self.titleLabel.font = UIFont.boldSystemFontOfSize(22.0)
        self.titleLabel.text = french ? "Guide d’utilisation du NovoPen®" : "دليل استخدام نوفوبين"
        self.navigationItem.titleView = self.titleLabel
        
        // Customize navigation bar
        self.navigationController?.navigationBar.translucent = true
        
        self.navigationController?.navigationBar.barTintColor = UIColor.flatSkyBlueColorDark()
        
        self.navigationController?.navigationBar.tintColor = UIColor.whiteColor()
        self.titleLabel.textColor = UIColor.whiteColor()
        
        self.setNeedsStatusBarAppearanceUpdate()
        
    }

}
