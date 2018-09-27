//
//  ViewController.swift
//  caculater927
//
//  Created by 周世婧 on 2018/9/27.
//  Copyright © 2018年 周世婧. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var temp = 0
    var redu = 0
    var multi = 0

    @IBAction func button1(_ sender: Any) {
        caculaterDisplay.text=caculaterDisplay.text!+"1"
    }
    
    @IBAction func button2(_ sender: Any) {
        caculaterDisplay.text = caculaterDisplay.text! + "2"
    }
    
    @IBAction func button3(_ sender: Any) {
        caculaterDisplay.text=caculaterDisplay.text!+"3"
    }
    
    @IBAction func button4(_ sender: Any) {
        caculaterDisplay.text=caculaterDisplay.text!+"4"
    }
    
    @IBAction func button5(_ sender: Any) {
        caculaterDisplay.text=caculaterDisplay.text!+"5"
    }
    
    @IBAction func button6(_ sender: Any) {
        caculaterDisplay.text=caculaterDisplay.text!+"6"
    }
    
    @IBAction func button7(_ sender: Any) {
        caculaterDisplay.text=caculaterDisplay.text!+"7"
    }
    
    @IBAction func button8(_ sender: Any) {
        caculaterDisplay.text=caculaterDisplay.text!+"8"
    }
    
    @IBAction func button9(_ sender: Any) {
        caculaterDisplay.text=caculaterDisplay.text!+"9"
    }
    
    @IBAction func button0(_ sender: Any) {
        caculaterDisplay.text=caculaterDisplay.text!+"0"
    }
    
    @IBAction func buttonreduce(_ sender: Any) {
        redu = Int(caculaterDisplay.text!)!
        caculaterDisplay.text = ""
    }
    
    @IBAction func buttoncaculator(_ sender: Any) {
        var sum = 0
        sum = temp + Int(caculaterDisplay.text!)!
        caculaterDisplay.text = "\(sum)"
        var difference = 0
        difference = redu - Int(caculaterDisplay.text!)!
        caculaterDisplay.text = "\(difference)"
        var product = 0
        product = multi * Int(caculaterDisplay.text!)!
        caculaterDisplay.text = "\(product)"
        
    }
    
    @IBAction func buttonadd(_ sender: Any) {
        temp = Int(caculaterDisplay.text!)!
        caculaterDisplay.text = ""
    }
    
    @IBAction func buttonmultiply(_ sender: Any) {
        multi = Int(caculaterDisplay.text!)!
        caculaterDisplay.text = ""
    }
    
    @IBAction func clear(_ sender: Any) {
        caculaterDisplay.text = ""
    }
    @IBOutlet weak var caculaterDisplay: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

