//
//  Dose.swift
//  NovoMixPasseportSwift
//
//  Created by Fethi El Hassasna on 3/17/15.
//  Copyright (c) 2015 Fethi El Hassasna. All rights reserved.
//

import UIKit

@IBDesignable class DoseView: UIView {
    
    // Outlets for day view
    @IBOutlet weak var dayView: UIView!
    @IBOutlet weak var sliderDay: UISlider!
    @IBOutlet weak var labelDayAlert: UILabel!
    @IBOutlet weak var labelDay: UILabel!
    
    // Outlets for night view
    @IBOutlet weak var nightView: UIView!
    @IBOutlet weak var sliderNight: UISlider!
    @IBOutlet weak var labelNightAlert: UILabel!
    @IBOutlet weak var labelNight: UILabel!
    
    // Custom view from the XIB file
    var view: SpringView!
    
    // Day or night
    @IBInspectable var day : Bool = true {
        didSet {
            if day {
                
                // It's day
                self.nightView?.hidden = true
                self.dayView?.hidden = false
                
            } else {
                
                // It's night
                self.nightView?.hidden = false
                self.dayView?.hidden = true
            }
        }
    }

    override init(frame: CGRect) {
        
        super.init(frame: frame)
        xibSetup()
        
        self.labelDayAlert.hidden = true
        self.labelNightAlert.hidden = true
    }
    
    required init(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        xibSetup()
        
        self.labelDayAlert.hidden = true
        self.labelNightAlert.hidden = true
    }
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
    // Drawing code
    }
    */
    
    func xibSetup() {
        view = loadViewFromNib()
        
        // use bounds not frame or it'll be offset
        view.frame = bounds
        view.backgroundColor = UIColor.clearColor()
        
        // Make the view stretch with containing view
        view.autoresizingMask = UIViewAutoresizing.FlexibleWidth | UIViewAutoresizing.FlexibleHeight
        
        // Adding custom subview on top of our view (over any custom drawing > see note below)
        addSubview(view)
        
    }
    
    func loadViewFromNib() -> SpringView {
        let bundle = NSBundle(forClass: self.dynamicType)
        let nib = UINib(nibName: "DoseView", bundle: bundle)
        
        // Assumes UIView is top level and only object in CustomView.xib file
        let view = nib.instantiateWithOwner(self, options: nil)[0] as SpringView
        return view
    }

}
