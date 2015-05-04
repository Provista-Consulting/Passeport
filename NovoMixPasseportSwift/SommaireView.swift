//
//  SommaireView.swift
//  NovoMixPasseportSwift
//
//  Created by Fethi El Hassasna on 4/1/15.
//  Copyright (c) 2015 Fethi El Hassasna. All rights reserved.
//

import UIKit

@IBDesignable class SommaireView: SpringView {
    
    @IBOutlet weak var buttonFlexPen: TopButton!
    
    // Our custom view from the XIB file
    var view: UIView!
    
    convenience init() {
        self.init(frame:CGRectZero)
        xibSetup()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        xibSetup()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        xibSetup()
    }
    
    func xibSetup() {
        view = loadViewFromNib()
        
        // use bounds not frame or it'll be offset
        view.frame = bounds
        //view.backgroundColor = UIColor.clearColor()
        
        // Make the view stretch with containing view
        view.autoresizingMask = UIViewAutoresizing.FlexibleWidth | UIViewAutoresizing.FlexibleHeight
        
        // Adding custom subview on top of our view (over any custom drawing > see note below)
        addSubview(view)
    }
    
    func loadViewFromNib() -> UIView {
        let bundle = NSBundle(forClass: self.dynamicType)
        let nib = UINib(nibName: "SommaireView", bundle: bundle)
        
        // Assumes UIView is top level and only object in CustomView.xib file
        let view = nib.instantiateWithOwner(self, options: nil)[0] as! UIView
        return view
    }

    @IBAction func hideMe(sender: AnyObject) {
        
        self.animation = "fadeOut"
        self.animate()
        
    }

}
