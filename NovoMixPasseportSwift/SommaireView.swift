//
//  SommaireView.swift
//  NovoMixPasseportSwift
//
//  Created by Fethi El Hassasna on 4/1/15.
//  Copyright (c) 2015 Fethi El Hassasna. All rights reserved.
//

import UIKit

@IBDesignable class SommaireView: SpringView {
    
    var french : Bool = true {
        didSet {
            
            if french {
                // Show french labels
                
                labelFlexPenAr.hidden = true
                labelFlexPen.hidden = false
                
                labelHypoglycemieAr.hidden = true
                labelHypoglycemie.hidden = false
                
                labelAdapteDoseAr.hidden = true
                labelAdapteDose.hidden = false
                
                labelNovoTwistAr.hidden = true
                labelNovoTwist.hidden = false
                
                labelConseilsAr.hidden = true
                labelConseils.hidden = false
                
                labelNovoFineAr.hidden = true
                labelNovoFine.hidden = false
                
                buttonSommaireAr.hidden = true
                buttonSommaire.hidden = false
                
            } else {
                // Show arabic labels
                labelFlexPenAr.hidden = false
                labelFlexPen.hidden = true
                
                labelHypoglycemieAr.hidden = false
                labelHypoglycemie.hidden = true
                
                labelAdapteDoseAr.hidden = false
                labelAdapteDose.hidden = true
                
                labelNovoTwistAr.hidden = false
                labelNovoTwist.hidden = true
                
                labelConseilsAr.hidden = false
                labelConseils.hidden = true
                
                labelNovoFineAr.hidden = false
                labelNovoFine.hidden = true
                
                buttonSommaireAr.hidden = false
                buttonSommaire.hidden = true
            }
        }
    }
    
    // Labels outlets
    
    @IBOutlet weak var labelFlexPen: UILabel!
    @IBOutlet weak var labelFlexPenAr: UILabel!
    
    @IBOutlet weak var labelHypoglycemie: UILabel!
    @IBOutlet weak var labelHypoglycemieAr: UILabel!
    
    @IBOutlet weak var labelAdapteDose: UILabel!
    @IBOutlet weak var labelAdapteDoseAr: UILabel!
    
    @IBOutlet weak var labelNovoTwist: UILabel!
    @IBOutlet weak var labelNovoTwistAr: UILabel!
    
    @IBOutlet weak var labelConseils: UILabel!
    @IBOutlet weak var labelConseilsAr: UILabel!
    
    @IBOutlet weak var labelNovoFine: UILabel!
    @IBOutlet weak var labelNovoFineAr: UILabel!
    
    // Sommaire outlets
    @IBOutlet weak var buttonSommaire: TopButton!
    @IBOutlet weak var buttonSommaireAr: TopButton!
    
    // Buttons outlets
    @IBOutlet weak var buttonFlexPen: TopButton!
    @IBOutlet weak var buttonAdapteDose: TopButton!
    @IBOutlet weak var buttonNovoTwist: TopButton!
    @IBOutlet weak var buttonHypoglycemie: TopButton!
    @IBOutlet weak var buttonConseils: TopButton!
    @IBOutlet weak var buttonNovoFine: TopButton!
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
