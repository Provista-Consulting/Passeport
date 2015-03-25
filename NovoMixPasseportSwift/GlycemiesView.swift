//
//  GlycemiesView.swift
//  NovoMixPasseportSwift
//
//  Created by Fethi El Hassasna on 3/18/15.
//  Copyright (c) 2015 Fethi El Hassasna. All rights reserved.
//

import UIKit

@IBDesignable class GlycemiesView: UIView {

    // Outlets for day view
    @IBOutlet weak var dayView: UIView!
    @IBOutlet weak var pickerDay1: MyPickerView!
    @IBOutlet weak var pickerDay2: MyPickerView!
    @IBOutlet weak var pickerDay3: MyPickerView!
    
    // Outlets for night view
    @IBOutlet weak var nightView: UIView!
    @IBOutlet weak var pickerNight1: MyPickerView!
    @IBOutlet weak var pickerNight2: MyPickerView!
    @IBOutlet weak var pickerNight3: MyPickerView!
    
    // Custom view from the XIB file
    var view: UIView!
    
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
    }
    
    required init(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        xibSetup()
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
    
    func loadViewFromNib() -> UIView {
        let bundle = NSBundle(forClass: self.dynamicType)
        let nib = UINib(nibName: "GlycemiesView", bundle: bundle)
        
        // Assumes UIView is top level and only object in CustomView.xib file
        let view = nib.instantiateWithOwner(self, options: nil)[0] as UIView
        return view
    }

}
