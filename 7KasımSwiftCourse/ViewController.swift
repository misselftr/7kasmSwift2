//
//  ViewController.swift
//  7KasımSwiftCourse
//
//  Created by ÖZLEM ATABAY on 7.11.2015.
//  Copyright (c) 2015 ÖZLEM ATABAY. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func sliderChanged(sender: AnyObject) {
        displayLabel.text=("\(radiusSelected.value)")
    }
    @IBOutlet weak var diaCalculate: UILabel!
    @IBAction func resetSlider(sender: AnyObject) {
        radiusSelected.value=0.0
        diaCalculate.text=""
        displayLabel.text=""
    }
    @IBOutlet weak var radiusSelected: UISlider!
    @IBOutlet weak var displayLabel: UILabel!
    @IBAction func clickStartButton(sender: AnyObject) {
        
        diaCalculate.text = ("Seçilen değere göre hesaplanan çevre değeri \((radiusSelected.value)*6.28)")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0.09, green: 0.9, blue: 0.9, alpha: 1.0)
        displayLabel.text="0.0"
        radiusSelected.value=0.0
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

