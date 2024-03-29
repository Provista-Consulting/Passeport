//
//  ResultView.swift
//  NovoMixPasseportSwift
//
//  Created by Fethi El Hassasna on 3/18/15.
//  Copyright (c) 2015 Fethi El Hassasna. All rights reserved.
//

import UIKit

@IBDesignable class ResultView: UIView {

    // Outlets for day view
    @IBOutlet weak var dayView: UIView!
    @IBOutlet weak var labelDayMin: UILabel!
    @IBOutlet weak var labelNightDose: UILabel!
    @IBOutlet weak var labelNightResult: TOMSMorphingLabel!
    @IBOutlet weak var labelNightResultSecond: TOMSMorphingLabel!
    @IBOutlet weak var labelNightDoseAlert: UILabel!
    
    // Outlets for night view
    @IBOutlet weak var nightView: UIView!
    @IBOutlet weak var labelNightMin: UILabel!
    @IBOutlet weak var labelDayDose: UILabel!
    @IBOutlet weak var labelDayResult: TOMSMorphingLabel!
    @IBOutlet weak var labelDayResultSecond: TOMSMorphingLabel!
    @IBOutlet weak var labelDayDoseAlert: UILabel!
    
    
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
        
        self.labelDayDoseAlert.hidden = true
        self.labelNightDoseAlert.hidden = true
    }
    
    required init(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        xibSetup()
        
        self.labelDayDoseAlert.hidden = true
        self.labelNightDoseAlert.hidden = true
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
        let nib = UINib(nibName: "ResultView", bundle: bundle)
        
        // Assumes UIView is top level and only object in CustomView.xib file
        let view = nib.instantiateWithOwner(self, options: nil)[0] as! SpringView
        return view
    }

    @IBAction func showAlert(sender: AnyObject) {
        
        let importantAlert = UIAlertView(title: "Important :\n", message: "Novo Nordisk ne va pas collecter ou archiver aucune donnée patient à travers cet outil.\n\nCet outil vous conseillera sur le nombre d'unité d'insuline à prendre. ", delegate: nil, cancelButtonTitle: "OK")
        
        
        
        importantAlert.show()
    }
}
