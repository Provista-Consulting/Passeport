//
//  ViewController.swift
//  NovoMixPasseportSwift
//
//  Created by Fethi El Hassasna on 3/12/15.
//  Copyright (c) 2015 Fethi El Hassasna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var french = true
    @IBOutlet weak var languageButton: RButton!
    
    @IBOutlet weak var label1French: UILabel!
    @IBOutlet weak var label2French: UILabel!
    
    @IBOutlet weak var label1Arabic: UILabel!
    @IBOutlet weak var label2Arabic: UILabel!
    
    @IBOutlet weak var mlButton: RButton!
    @IBOutlet weak var livretButton: RButton!
    
    
    
    @IBOutlet weak var infoLabel: UILabel!
    
    var sommaireView = SommaireView(frame: CGRect(x: 0, y: 0, width: 1024, height: 768))
    var titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 400, height: 44))

    @IBOutlet weak var simulationButton: UIBarButtonItem!
    @IBOutlet weak var sommaireButton: UIBarButtonItem!
    @IBOutlet weak var showHideButton: ShowHideButton!
    @IBOutlet weak var buttonsContainer: UIView!
    
    var buttonsContainerShow = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //info.hidden = true
        createNavigationStyle ()
        self.createViews()
        
        // Hide arabic stuff
        self.label1Arabic.hidden = true
        self.label2Arabic.hidden = true
        
        /* Buttons container */
        
        self.buttonsContainer.transform = CGAffineTransformMakeTranslation(215.0, 0.0)
        self.sommaireView.hidden = true
        self.view.addSubview(self.sommaireView)
        
        /* Actions */
        self.sommaireView.buttonFlexPen.addTarget(self, action: "showFlexPenVC:", forControlEvents: UIControlEvents.TouchUpInside)
        self.sommaireView.buttonAdapteDose.addTarget(self, action: "showAdapteDoseVC:", forControlEvents: UIControlEvents.TouchUpInside)
        self.sommaireView.buttonHypoglycemie.addTarget(self, action: "showHypoglycemieVC:", forControlEvents: UIControlEvents.TouchUpInside)
        self.sommaireView.buttonNovoTwist.addTarget(self, action: "showNovoTwistVC:", forControlEvents: UIControlEvents.TouchUpInside)
        self.sommaireView.buttonNovoFine.addTarget(self, action: "showNovoFineVC:", forControlEvents: UIControlEvents.TouchUpInside)
        self.sommaireView.buttonConseils.addTarget(self, action: "showConseilsVC:", forControlEvents: UIControlEvents.TouchUpInside)
        
        self.sommaireView.french = self.french
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
// MARK: - Actions
    
    @IBAction func showFlexPenVC (sender: AnyObject!) {
        
        var storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let vc : FlexPenViewController = storyboard.instantiateViewControllerWithIdentifier("FlexPenVC") as! FlexPenViewController
        vc.french = self.french
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func showAdapteDoseVC (sender: AnyObject!) {
        
        var storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let vc : AdapteDoseViewController = storyboard.instantiateViewControllerWithIdentifier("AdapteDoseVC") as! AdapteDoseViewController
        vc.french = self.french
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func showHypoglycemieVC (sender: AnyObject!) {
        
        var storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let vc : HypoglycemieViewController = storyboard.instantiateViewControllerWithIdentifier("HypoglycemieVC") as! HypoglycemieViewController
        vc.french = self.french
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func showNovoTwistVC (sender: AnyObject!) {
        
        var storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let vc : NovoTwistViewController = storyboard.instantiateViewControllerWithIdentifier("NovoTwistVC") as! NovoTwistViewController
        vc.french = self.french
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func showNovoFineVC (sender: AnyObject!) {
        
        let vc = NovoFineViewController()
        vc.french = self.french
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func showConseilsVC (sender: AnyObject!) {
        
        var storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let vc : ConseilsViewController = storyboard.instantiateViewControllerWithIdentifier("ConseilsVC") as! ConseilsViewController
        vc.french = self.french
        self.navigationController?.pushViewController(vc, animated: true)
    }

    @IBAction func showHideButtonAction(sender: AnyObject!) {
        
        UIView.animateWithDuration(0.8, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 0.2, options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
            // Start animation
            
            if self.buttonsContainerShow {
                
                self.buttonsContainer.transform = CGAffineTransformMakeTranslation(215.0, 0.0)
                self.buttonsContainerShow = false
                
                self.showHideButton.transform = CGAffineTransformMakeRotation(0.0)
                
            } else {
                
                self.buttonsContainer.transform = CGAffineTransformMakeTranslation(0.0, 0.0)
                
                self.showHideButton.transform = CGAffineTransformMakeRotation(CGFloat(M_PI))
                
                self.buttonsContainerShow = true
            }
            
            
            }) { (Bool) -> Void in
                // finish animamation
                
        }
    }
    
    @IBAction func showSommaire(sender: AnyObject!) {
        
        if (sender as! UIBarButtonItem).title == "Fermer" || (sender as! UIBarButtonItem).title == "إغلاق" {
            
            (sender as! UIBarButtonItem).title = self.french ? "Sommaire" : "الفهرس"
            
            self.sommaireView.animation = "fadeOut"
            self.sommaireView.animate()
            
        } else {
            self.sommaireView.animatedViews(nil)
            self.sommaireView.hidden = false
            self.sommaireView.animation = "fadeIn"
            self.sommaireView.animate()
            (sender as! UIBarButtonItem).title = self.french ? "Fermer" : "إغلاق"
            
        }
        
    }
    
    // MARK: - create views
    
    func createViews() {
        


    }
    
    
    func createNavigationStyle () {
        
        // Create custom label for titleView
        //self.titleLabel.text = "Simulation"
        self.titleLabel.backgroundColor = UIColor.clearColor()
        self.titleLabel.adjustsFontSizeToFitWidth = true
        self.titleLabel.textColor = UIColor.blackColor()
        self.titleLabel.textAlignment = .Center
        self.titleLabel.font = UIFont.boldSystemFontOfSize(22.0)
        self.titleLabel.text = "Mon passeport"
        self.navigationItem.titleView = self.titleLabel
        
        // Customize navigation bar
        self.navigationController?.navigationBar.translucent = true
        
        self.navigationController?.navigationBar.barTintColor = UIColor.flatSkyBlueColorDark()
        
        self.navigationController?.navigationBar.tintColor = UIColor.whiteColor()
        self.titleLabel.textColor = UIColor.whiteColor()
        
        self.setNeedsStatusBarAppearanceUpdate()
        
    }

    @IBAction func changeLanguage(sender: AnyObject) {
        
        if self.french {
            
            // Show arabic views
            
            self.label1Arabic.hidden = false
            self.label2Arabic.hidden = false
            
            self.label1French.hidden = true
            self.label2French.hidden = true
            
            self.french = false
            self.languageButton.setTitle("FR", forState: UIControlState.Normal)
            
            self.infoLabel.text = "            - نوفو نورديسك لن تقوم بجمع أو حفظ أي معلومة تخص المريض عن طريق هذا التطبيق.\n            - هذا التطبيق يساعد المريض بداء السكري في تحديد جرعة الأنسولين التي يجب حقنها."
            
            self.titleLabel.text = "دفتر التكفل الذاتي"
            
            self.navigationItem.rightBarButtonItem?.title = "الفهرس"
            
            self.navigationItem.leftBarButtonItem?.title = "تحديد الجرعة"
            
        } else {
            
            // Show french views
            
            self.label1Arabic.hidden = true
            self.label2Arabic.hidden = true
            
            self.label1French.hidden = false
            self.label2French.hidden = false
            
            self.french = true
            self.languageButton.setTitle("AR", forState: UIControlState.Normal)
            
            self.infoLabel.text = "- Novo Nordisk ne va pas collecter ou archiver aucune donnée patient à travers cet outil.\n- Cet outil conseillera le patient diabétique sur le nombre d'unité d'insuline à s'injecter."
            self.titleLabel.text = "Mon passeport"
            
            self.navigationItem.rightBarButtonItem?.title = "Sommaire"
            
            self.navigationItem.leftBarButtonItem?.title = "Simulation"
        }
        
        self.sommaireView.french = self.french
        
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
        
        
        
        if sender!.tag == 100 {
            let vc = segue.destinationViewController as! PDFViewController
            vc.pdfTitle = "Mentions Légales"
            vc.pdfFile = "rcp"
            
        }

        if sender!.tag == 200 {
            let vc = segue.destinationViewController as! PDFViewController
            vc.pdfTitle = "Livret"
            vc.pdfFile = "passeport"
            
        }
        
    }
    
    @IBAction func showAlert(sender: AnyObject) {
        
        let importantAlert = UIAlertView(title: "Important :\n", message: "Novo Nordisk ne va pas collecter ou archiver aucune donnée patient à travers cet outil.\n\nCet outil vous conseillera sur le nombre d'unité d'insuline à prendre. ", delegate: nil, cancelButtonTitle: "OK")
                
        importantAlert.show()
    }
    


}

