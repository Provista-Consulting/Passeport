//
//  CalculatorViewController.swift
//  NovoMixPasseportSwift
//
//  Created by Fethi El Hassasna on 3/18/15.
//  Copyright (c) 2015 Fethi El Hassasna. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    // Outlets for Views
    @IBOutlet weak var objectifView: ObjectifView!
    @IBOutlet weak var doseView: DoseView!
    @IBOutlet weak var glycemiesView: GlycemiesView!
    @IBOutlet weak var resultView: ResultView!
    @IBOutlet weak var bg: UIImageView!
    @IBOutlet weak var mainView: UIView!
    
    @IBOutlet weak var dayButton: MyButton!
    @IBOutlet weak var nightButton: MyButton!
    
    // Local properties
    
    var pickerDataNumber = ["0", "1", "2", "3", "4"]
    var pickerDataDecimal : [String] = []
    
    var oneInj = false
    
    var doseDay = 12
    var doseNight = 12
    
    var day = true
    
    // input values
    
    var objectifMin : Double = 0
    var objectifMax : Double = 0
    
    var day1 : Double = 0
    var day2 : Double = 0
    var day3 : Double = 0
    
    var night1 : Double = 0
    var night2 : Double = 0
    var night3 : Double = 0
    
    var minDay : Double = 0
    var minNight : Double = 0
    
    var newDoseDay = 0
    var newDoseNight = 0
    
    // MARK: - ViewController
    // MARK: -
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //self.navigationController?.navigationBar.backgroundImageForBarMetrics(UIBarMetrics.Default)
        self.navigationController?.navigationBar.translucent = true
        
        defaultValue()
        
        if self.oneInj {
            // If one injection
            
            if self.day {
                self.dayButton.transform = CGAffineTransformMakeTranslation(60, 0)
                self.dayButton.enabled = false
                self.nightButton.hidden = true
                setupForDay()
                
            } else {
                self.nightButton.transform = CGAffineTransformMakeTranslation(-55, 0)
                self.nightButton.enabled = false
                self.dayButton.hidden = true
                setupForNight()
                
            }
            
        } else {
            // If two injections
            if self.day {
                setupForDay()
            } else {
                setupForNight()
            }
            
            self.doseView.sliderDay.value = 6.0
            self.doseView.sliderNight.value = 6.0
            
            self.doseDay = 6
            self.doseNight = 6
            
            self.doseView.labelDay.text = "6 Unités"
            self.doseView.labelNight.text = "6 Unités"
            
        }
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        
        self.resultView.alpha = 0.0
        self.doseView.alpha = 0.0
        self.glycemiesView.alpha = 0.0
        
        defaultValue()
        
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
    
    // MARK: - pickerView Delegate
    // MARK: -
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        // When a picker view change value
        
        // When the objectif changes
        
        if pickerView == self.objectifView.pickerMin {
            self.objectifMin = getPickerViewValue(self.objectifView.pickerMin.selectedRowInComponent(0), pos2: self.objectifView.pickerMin.selectedRowInComponent(1))
            
            showDoseView()
            
            calculDay()
            calculNight()
        }
        
        if pickerView == self.objectifView.pickerMax {
            self.objectifMax = getPickerViewValue(self.objectifView.pickerMax.selectedRowInComponent(0), pos2: self.objectifView.pickerMax.selectedRowInComponent(1))
            
            showDoseView()
            
            calculDay()
            calculNight()
        }
        
        // When day's glycemie changes
        if pickerView == self.glycemiesView.pickerDay1 {
            self.day1 = getPickerViewValue(self.glycemiesView.pickerDay1.selectedRowInComponent(0), pos2: self.glycemiesView.pickerDay1.selectedRowInComponent(1))
            
            calculDay()
        }
        
        if pickerView == self.glycemiesView.pickerDay2 {
            self.day2 = getPickerViewValue(self.glycemiesView.pickerDay2.selectedRowInComponent(0), pos2: self.glycemiesView.pickerDay2.selectedRowInComponent(1))
            
            calculDay()
        }
        
        if pickerView == self.glycemiesView.pickerDay3 {
            self.day3 = getPickerViewValue(self.glycemiesView.pickerDay3.selectedRowInComponent(0), pos2: self.glycemiesView.pickerDay3.selectedRowInComponent(1))
            
            calculDay()
        }
        
        // When night's glycemie changes
        if pickerView == self.glycemiesView.pickerNight1 {
            self.night1 = getPickerViewValue(self.glycemiesView.pickerNight1.selectedRowInComponent(0), pos2: self.glycemiesView.pickerNight1.selectedRowInComponent(1))
            
            calculNight()
        }
        
        if pickerView == self.glycemiesView.pickerNight2 {
            self.night2 = getPickerViewValue(self.glycemiesView.pickerNight2.selectedRowInComponent(0), pos2: self.glycemiesView.pickerNight2.selectedRowInComponent(1))
            
            calculNight()
        }
        
        if pickerView == self.glycemiesView.pickerNight3 {
            self.night3 = getPickerViewValue(self.glycemiesView.pickerNight3.selectedRowInComponent(0), pos2: self.glycemiesView.pickerNight3.selectedRowInComponent(1))
            
            calculNight()
        }

    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        if component == 0 {
            return self.pickerDataNumber.count
        } else {
            return self.pickerDataDecimal.count
        }
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        
        if component == 0 {
            return self.pickerDataNumber[row]
        } else {
            return self.pickerDataDecimal[row]
        }
    }
    
    func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView!) -> UIView {
        var label = UILabel()
        
        if component == 0 {
            label = UILabel(frame: CGRectMake(0, 0, pickerView.frame.size.width - 60, 40))
            label.text = self.pickerDataNumber[row]
        } else {
            label = UILabel(frame: CGRectMake(0, 0, pickerView.frame.size.width - 40, 80))
            label.text = self.pickerDataDecimal[row]
        }
        
        label.textColor = UIColor.flatSkyBlueColorDark()
        label.textAlignment = NSTextAlignment.Center
        label.font = UIFont(name: "HelveticaNeue-Bold", size: 22)
        
        if pickerView.tag > 100 {
            label.textColor = UIColor.flatBlueColorDark()
        }
        
        return label
    }
    
    // MARK: - Actions
    // MARK: -
    
    @IBAction func sliderAction(sender: AnyObject!) {
        
        if sender?.tag == 201 {
            //println("Day slider")
            
            self.doseDay = Int(self.doseView.sliderDay.value)
            self.doseView.labelDay.text = "\(self.doseDay) Unités"
            self.doseView.sliderDay.value = Float(self.doseDay)
            
            if oneInj {
                if self.doseDay > 30 {
                    self.doseView.labelDayAlert.hidden = false
                } else {
                    self.doseView.labelDayAlert.hidden = true
                }
            }
            
            calculNight()
        }
        
        if sender?.tag == 202 {
            //println("Night slider")
            
            self.doseNight = Int(self.doseView.sliderNight.value)
            self.doseView.labelNight.text = "\(self.doseNight) Unités"
            self.doseView.sliderNight.value = Float(self.doseNight)
            
            if oneInj {
                if self.doseNight > 30 {
                    self.doseView.labelNightAlert.hidden = false
                } else {
                    self.doseView.labelNightAlert.hidden = true
                }
            }
            
            calculDay()
        }
        
    }
    
    
    
    @IBAction func jourAction(sender: AnyObject!) {
        
        setupForDay()
    }
    
    @IBAction func soirAction(sender: AnyObject) {
        
        setupForNight()
    }
    
    // MARK: - Helpers
    // MARK: -
    
    func defaultValue() {
        
        for var i = 0; i < 100; i++ {
            
            let string = NSString(format: "%.02f", Float(i) / 100.0).substringFromIndex(2) as String
            self.pickerDataDecimal.append(string)
        }
        
        // Setup Delegates and Datasources
        
        self.objectifView.pickerMin.delegate = self
        self.objectifView.pickerMin.dataSource = self
        self.objectifView.pickerMax.delegate = self
        self.objectifView.pickerMax.dataSource = self
        
        self.glycemiesView.pickerDay1.delegate = self
        self.glycemiesView.pickerDay1.dataSource = self
        self.glycemiesView.pickerDay2.delegate = self
        self.glycemiesView.pickerDay2.dataSource = self
        self.glycemiesView.pickerDay3.delegate = self
        self.glycemiesView.pickerDay3.dataSource = self
        
        self.glycemiesView.pickerNight1.delegate = self
        self.glycemiesView.pickerNight1.dataSource = self
        self.glycemiesView.pickerNight2.delegate = self
        self.glycemiesView.pickerNight2.dataSource = self
        self.glycemiesView.pickerNight3.delegate = self
        self.glycemiesView.pickerNight3.dataSource = self
        
        // Tags for UI elements
        
        self.glycemiesView.pickerNight1.tag = 101
        self.glycemiesView.pickerNight2.tag = 102
        self.glycemiesView.pickerNight3.tag = 103
        
        self.doseView.sliderDay.tag = 201
        self.doseView.sliderNight.tag = 202
        
        // Add actions for UI elements
        
        self.doseView.sliderDay.addTarget(self, action: "sliderAction:", forControlEvents: UIControlEvents.ValueChanged)
        self.doseView.sliderNight.addTarget(self, action: "sliderAction:", forControlEvents: UIControlEvents.ValueChanged)
        
        self.doseView.sliderDay.addTarget(self, action: "showGlycemieViewAction:", forControlEvents: (UIControlEvents.TouchUpInside | UIControlEvents.TouchUpOutside))
        self.doseView.sliderNight.addTarget(self, action: "showGlycemieViewAction:", forControlEvents: (UIControlEvents.TouchUpInside | UIControlEvents.TouchUpOutside))
        
        self.resultView.labelDayResult.text = ""
        self.resultView.labelDayResultSecond.text = ""
        
        self.resultView.labelNightResult.text = ""
        self.resultView.labelNightResultSecond.text = ""
        
        // Add motion effect to main view
        
        //        var motionEffect = UIInterpolatingMotionEffect(keyPath: "center.x", type: UIInterpolatingMotionEffectType.TiltAlongHorizontalAxis)
        //        motionEffect.minimumRelativeValue = -15
        //        motionEffect.maximumRelativeValue = 15
        //
        //        self.mainView.addMotionEffect(motionEffect)
        //
        //        motionEffect = UIInterpolatingMotionEffect(keyPath: "center.y", type: UIInterpolatingMotionEffectType.TiltAlongVerticalAxis)
        //        motionEffect.minimumRelativeValue = -15
        //        motionEffect.maximumRelativeValue = 15
        //
        //        self.mainView.addMotionEffect(motionEffect)
    }
    
    func getPickerViewValue (pos1 : Int, pos2 : Int) -> Double {
        
        let number = self.pickerDataNumber[pos1].toInt()
        let decimal = self.pickerDataDecimal[pos2].toInt()
        
        let pickerViewValue = Double(number!) + (Double(decimal!) / 100)
        
        return pickerViewValue
    }
    
    func minValue (v1 : Double, v2 : Double, v3 : Double) -> Double {
        
        var min : Double = 0
        
        if (v1 <= v2) && (v1 <= v3) {
            min = v1
        }
        
        if (v2 <= v1) && (v2 <= v3) {
            min = v2
        }
        
        if (v3 <= v1) && (v3 <= v2) {
            min = v3
        }
        
        return min;
    }
    
    func setupForDay () {
        
        self.doseView.day = false
        self.glycemiesView.day = true
        self.resultView.day = true
        self.bg.image = UIImage(named: "bg-jour")
        
    }
    
    func setupForNight () {
        
        self.doseView.day = true
        self.glycemiesView.day = false
        self.resultView.day = false
        self.bg.image = UIImage(named: "bg-soir")
        
    }
    
    func showDoseView () {
        
        if self.objectifMin > 0 && self.objectifMax > 0 && self.objectifMax > self.objectifMin && self.doseView.alpha == 0 {
            
            self.doseView.alpha = 1.0
            
            self.doseView.view.animation = "slideUp"
            self.doseView.view.animate()
        }
    }
    
    @IBAction func showGlycemieViewAction (sender: AnyObject!) {
        
        if self.glycemiesView.alpha == 0 {
            
            self.glycemiesView.alpha = 1.0
            
            self.glycemiesView.view.animation = "slideUp"
            self.glycemiesView.view.animate()
        }
    }
    
    func showResultView () {
        
        if self.resultView.alpha == 0 {
            
            self.resultView.alpha = 1.0
            
            self.resultView.view.animation = "fadeInRight"
            self.resultView.view.animate()
        }
        
    }
    
    // MARK: - Calcul functions
    // MARK: -

    func calculDay () {
        
        if (self.objectifMin != 0)
            && (self.objectifMax != 0)
            && (self.doseNight != 0)
            && (self.day1 != 0)
            && (self.day2 != 0)
            && (self.day3 != 0) {
                
                self.minDay = minValue(self.day1, v2: self.day2, v3: self.day3)
                self.resultView.labelDayMin.text = NSString(format: "%.02f g/l", self.minDay) as String
                
                var value = 0
                
                if self.minDay < self.objectifMin {
                    
                    //Je diminuerai la dose
                    
                    if self.minDay <= 0.8 {
                        
                        value = -2
                        self.resultView.labelNightResult.text = "Je diminuerai"
                        self.resultView.labelNightResultSecond.text = "la dose d'insuline du soir de 2 unités (-2U)"
                    }
                    
                    if (self.minDay > 0.8) && (self.minDay <= 1.1) {
                        
                        value = 0
                        self.resultView.labelNightResult.text = "Je conserverai"
                        self.resultView.labelNightResultSecond.text = "les mêmes doses d'insuline"
                    }
                    
                    self.newDoseNight = self.doseNight + value
                    self.resultView.labelNightDose.text = NSString(format: "%d Unités", self.newDoseNight) as String
                    
                }
                
                if self.minDay > self.objectifMax {
                    
                    if (self.minDay > 0.8) && (self.minDay <= 1.1) {
                        
                        value = 0
                        self.resultView.labelNightResult.text = "Je conserverai"
                        self.resultView.labelNightResultSecond.text = "les mêmes doses d'insuline"
                    }
                    
                    if (self.minDay > 1.11) && (self.minDay <= 1.4) {
                        
                        value = 2
                        self.resultView.labelNightResult.text = "J'augmenterai"
                        self.resultView.labelNightResultSecond.text = "la dose d'insuline du soir de 2 unités (+2U)"
                    }
                    
                    if (self.minDay >= 1.41) && (self.minDay <= 1.80) {
                        
                        value = 4
                        self.resultView.labelNightResult.text = "J'augmenterai"
                        self.resultView.labelNightResultSecond.text = "la dose d'insuline du soir de 4 unités (+4U)"
                    }
                    
                    if self.minDay > 1.80 {
                        
                        value = 6
                        self.resultView.labelNightResult.text = "J'augmenterai"
                        self.resultView.labelNightResultSecond.text = "la dose d'insuline du soir de 6 unités (+6U)"
                    }
                    
                    
                    //J'augmenterai la dose
                    self.newDoseNight = self.doseNight + value;
                    self.resultView.labelNightDose.text = NSString(format: "%d Unités", self.newDoseNight) as String
                    
                }
                
                if (self.minDay >= self.objectifMin) && (self.minDay <= self.objectifMax) {
                    //Je conserverai
                    self.newDoseNight = self.doseNight
                    self.resultView.labelNightDose.text = NSString(format: "%d Unités", self.newDoseNight) as String
                    self.resultView.labelNightResult.text = "Je conserverai"
                    self.resultView.labelNightResultSecond.text = "les mêmes doses d'insuline"
                }
                
                // Show animation
                //[self showAnimation];
                
                if self.oneInj {
                    
                    if self.newDoseNight > 30 {
                        self.resultView.labelNightDoseAlert.hidden = false
                    } else {
                        self.resultView.labelNightDoseAlert.hidden = true
                    }
                }
                
                showResultView()
                
        } else {
            
            self.resultView.labelDayMin.text = "- g/l"
            self.resultView.labelNightDose.text = "- Unités"
            self.resultView.labelNightResult.text = ""
            self.resultView.labelNightResultSecond.text = ""
            
            // Hide animation
            //[self hideAnimation];
        }

        
    }
    
    
    func calculNight () {
        
        if (self.objectifMin != 0)
            && (self.objectifMax != 0)
            && (self.doseDay != 0)
            && (self.night1 != 0)
            && (self.night2 != 0)
            && (self.night3 != 0) {
                
                self.minNight = minValue(self.night1, v2: self.night2, v3: self.night3)
                self.resultView.labelNightMin.text = NSString(format: "%.02f g/l", self.minNight) as String
                
                var value = 0
                
                if self.minNight < self.objectifMin {
                    
                    //Je diminuerai la dose
                    
                    if self.minNight <= 0.8 {
                        
                        value = -2
                        self.resultView.labelDayResult.text = "Je diminuerai"
                        self.resultView.labelDayResultSecond.text = "la dose d'insuline avant le petit dejeuner de 2 unités (-2U)"
                    }
                    
                    if (self.minNight > 0.8) && (self.minNight <= 1.1) {
                        
                        value = 0
                        self.resultView.labelDayResult.text = "Je conserverai"
                        self.resultView.labelDayResultSecond.text = "les mêmes doses d'insuline"
                    }
                    
                    self.newDoseDay = self.doseDay + value
                    self.resultView.labelDayDose.text = NSString(format: "%d Unités", self.newDoseDay) as String
                    
                }
                
                if self.minNight > self.objectifMax {
                    
                    if (self.minNight > 0.8) && (self.minNight <= 1.1) {
                        
                        value = 0
                        self.resultView.labelDayResult.text = "Je conserverai"
                        self.resultView.labelDayResultSecond.text = "les mêmes doses d'insuline"
                    }
                    
                    if (self.minNight > 1.11) && (self.minNight <= 1.4) {
                        
                        value = 2
                        self.resultView.labelDayResult.text = "J'augmenterai"
                        self.resultView.labelDayResultSecond.text = "la dose d'insuline avant le petit dejeuner de 2 unités (+2U)"
                    }
                    
                    if (self.minNight >= 1.41) && (self.minNight <= 1.80) {
                        
                        value = 4
                        self.resultView.labelDayResult.text = "J'augmenterai"
                        self.resultView.labelDayResultSecond.text = "la dose d'insuline avant le petit dejeuner de 4 unités (+4U)"
                    }
                    
                    if self.minNight > 1.80 {
                        
                        value = 6
                        self.resultView.labelDayResult.text = "J'augmenterai"
                        self.resultView.labelDayResultSecond.text = "la dose d'insuline avant le petit dejeuner de 6 unités (+6U)"
                    }
                    
                    
                    //J'augmenterai la dose
                    self.newDoseDay = self.doseDay + value
                    self.resultView.labelDayDose.text = NSString(format: "%d Unités", self.newDoseDay) as String
                    
                }
                
                if (self.minNight >= self.objectifMin) && (self.minNight <= self.objectifMax) {
                    //Je conserverai
                    self.newDoseDay = self.doseDay
                    self.resultView.labelDayDose.text = NSString(format: "%d Unités", self.newDoseDay) as String
                    self.resultView.labelDayResult.text = "Je conserverai"
                    self.resultView.labelDayResultSecond.text = "les mêmes doses d'insuline"
                }
                
                // Show animation
                //[self showAnimation];
                
                if self.oneInj {
                    
                    if self.newDoseDay > 30 {
                        self.resultView.labelDayDoseAlert.hidden = false
                    } else {
                        self.resultView.labelDayDoseAlert.hidden = true
                    }
                }
                
                showResultView()
                
        } else {
            
            self.resultView.labelNightMin.text = "- g/l"
            self.resultView.labelDayDose.text = "- Unités"
            self.resultView.labelDayResult.text = ""
            self.resultView.labelDayResultSecond.text = ""
            
            // Hide animation
            //[self hideAnimation];
        }

        
    }
}
