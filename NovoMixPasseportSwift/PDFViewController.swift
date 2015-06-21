//
//  PDFViewController.swift
//  NovoMixPasseportSwift
//
//  Created by Fethi El Hassasna on 5/24/15.
//  Copyright (c) 2015 Fethi El Hassasna. All rights reserved.
//

import UIKit

class PDFViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    var pdfTitle = ""
    var pdfFile = ""
    
    var titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 400, height: 44))
    
    @IBOutlet weak var navBar: UINavigationBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //self.webView.scrollView.delegate = self
        self.webView.scrollView.scrollEnabled = false
        self.webView.scalesPageToFit = true
        
        let path = NSBundle.mainBundle().pathForResource(pdfFile, ofType: "pdf")
        let url = NSURL(string: path!)
        let initialContentRequest = NSURLRequest(URL: url!)
        self.webView.loadRequest(initialContentRequest)
        
        self.title = pdfTitle
        
        createNavigationStyle()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func close(sender: UIBarButtonItem) {
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    
    func createNavigationStyle () {
        
        // Create custom label for titleView
        //self.titleLabel.text = "Simulation"
        self.titleLabel.backgroundColor = UIColor.clearColor()
        self.titleLabel.adjustsFontSizeToFitWidth = true
        self.titleLabel.textAlignment = .Center
        self.titleLabel.font = UIFont.boldSystemFontOfSize(22.0)
        self.titleLabel.text = self.pdfTitle
        self.navBar.topItem?.titleView = self.titleLabel
        
        // Customize navigation bar
        self.navBar.translucent = true
        
        self.navBar.barTintColor = UIColor.flatSkyBlueColorDark()
        
        self.navBar.tintColor = UIColor.whiteColor()
        self.titleLabel.textColor = UIColor.whiteColor()
        
        self.setNeedsStatusBarAppearanceUpdate()
        
    }

}
