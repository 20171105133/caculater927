//
//  ViewController.swift
//  caculater927
//
//  Created by 周世婧 on 2018/9/27.
//  Copyright © 2018年 周世婧. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var temp = 0.00
    var flag = 0

    @IBAction func button1(_ sender: Any){
        caculaterDisplay.text=caculaterDisplay.text!+"1"
    }
    
    @IBAction func button2(_ sender: Any){
        caculaterDisplay.text = caculaterDisplay.text! + "2"
    }
    
    @IBAction func button3(_ sender: Any){
        caculaterDisplay.text=caculaterDisplay.text!+"3"
    }
    
    @IBAction func button4(_ sender: Any){
        caculaterDisplay.text=caculaterDisplay.text!+"4"
    }
    
    @IBAction func button5(_ sender: Any){
        caculaterDisplay.text=caculaterDisplay.text!+"5"
    }
    
    @IBAction func button6(_ sender: Any){
        caculaterDisplay.text=caculaterDisplay.text!+"6"
    }
    
    @IBAction func button7(_ sender: Any){
        caculaterDisplay.text=caculaterDisplay.text!+"7"
    }
    
    @IBAction func button8(_ sender: Any){
        caculaterDisplay.text=caculaterDisplay.text!+"8"
    }
    
    @IBAction func button9(_ sender: Any){
        caculaterDisplay.text=caculaterDisplay.text!+"9"
    }
    
    @IBAction func button0(_ sender: Any){
        caculaterDisplay.text=caculaterDisplay.text!+"0"
    }
    
    
    @IBAction func buttoncaculator(_ sender: Any){
        if(flag == 1){
            var sum = 0.00
            sum = temp + Double(caculaterDisplay.text!)!
            caculaterDisplay.text = "\(sum)"
        }
        if(flag == 2){
            var difference = 0.00
            difference = temp - Double(caculaterDisplay.text!)!
            caculaterDisplay.text = "\(difference)"
        }
        if(flag == 3){
            var product = 0.00
            product = temp * Double(caculaterDisplay.text!)!
            caculaterDisplay.text = "\(product)"
        }
        if(flag == 4){
            var quotient = 0.00
            quotient = temp / Double(caculaterDisplay.text!)!
            caculaterDisplay.text = "\(quotient)"
        }
        
    }
    
    @IBAction func buttonadd(_ sender: Any){
        temp = Double(caculaterDisplay.text!)!
        caculaterDisplay.text = ""
        flag = 1
    }
    @IBAction func buttonreduce(_ sender: Any){
        temp = Double(caculaterDisplay.text!)!
        caculaterDisplay.text = ""
        flag = 2
    }

    @IBAction func buttonmultiply(_ sender: Any){
        temp = Double(caculaterDisplay.text!)!
        caculaterDisplay.text = ""
        flag = 3
    }
    
    @IBAction func buttondivide(_ sender: Any){
        temp = Double(caculaterDisplay.text!)!
        caculaterDisplay.text = ""
        flag = 4
        
    }
    
    @IBAction func point(_ sender: Any) {
        caculaterDisplay.text = caculaterDisplay.text!  + "."
    }
    
    
    @IBAction func percent(_ sender: Any) {
        temp = Double(caculaterDisplay.text!)!
        temp = temp * 0.01
        caculaterDisplay.text = "\(temp)"
        
    }
    
    @IBAction func clear(_ sender: Any){
        caculaterDisplay.text = ""
    }
    @IBOutlet weak var caculaterDisplay: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

