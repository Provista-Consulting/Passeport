//
//  HypoDialogViewSubviews2.swift
//  NovoMixPasseportSwift
//
//  Created by Fethi El Hassasna on 5/31/15.
//  Copyright (c) 2015 Fethi El Hassasna. All rights reserved.
//

import UIKit

class HypoDialogViewSubviews2: UIView, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var dico : [[String:String]] = []
    var french = true
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var viewContainer: UIView!
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    func load () {
        
        self.viewContainer.hidden = true
        
        let cellNib = UINib(nibName: "CustomCollectionCell", bundle: nil)
        self.collectionView.registerNib(cellNib, forCellWithReuseIdentifier: "Cell")
        
        self.collectionView.backgroundColor = UIColor.clearColor()
        self.collectionView.delaysContentTouches = false
        
        let path = NSBundle.mainBundle().pathForResource("symptomes1", ofType: "plist")
        let dataArray = NSArray(contentsOfFile: path!)!
        
        for dict : AnyObject in dataArray {
            
            var dic = [String:String]()
            dic["image"] = dict["image"] as? String
            let title = french ? dict["textFR"] : dict["textAR"]
            
            dic["title"] = title as? String
            
            dico.append(dic)
            
        }
        
        
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dico.count
    }
    
    // The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
                
        var cell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as! UICollectionViewCell
        
        let button = cell.viewWithTag(100) as! UIButton
        
        button.setBackgroundImage(UIImage(named: dico[indexPath.row]["image"]!), forState: UIControlState.Normal)
        
        button.tag = indexPath.row
        button.addTarget(self, action: "showViewContainer:", forControlEvents: UIControlEvents.TouchUpInside)
        
        //cell.backgroundColor = UIColor.greenColor()
        
        return cell
    }

    @IBAction func hideViewContainer(sender: AnyObject) {
        
        self.viewContainer.hidden = true
    }
    
    func showViewContainer(sender: UIButton) {
        
        self.imageView.image = UIImage(named: dico[sender.tag]["image"]!)
        
        self.label.text = dico[sender.tag]["title"]!
        
        self.viewContainer.hidden = false
    }
}
