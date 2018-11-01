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
    var calFlag = 0

    @IBAction func button1(_ sender: Any){
        if(calFlag == 1){
            caculaterDisplay.text=caculaterDisplay.text!+"1"
        }
        else{
            caculaterDisplay.text="1"
        }
        calFlag = 1
    }
    
    @IBAction func button2(_ sender: Any){
        if(calFlag == 1){
            caculaterDisplay.text=caculaterDisplay.text!+"2"
        }
        else{
            caculaterDisplay.text="2"
        }
        calFlag = 1
    }
    
    @IBAction func button3(_ sender: Any){
        if(calFlag == 1){
            caculaterDisplay.text=caculaterDisplay.text!+"3"
        }
        else{
            caculaterDisplay.text="3"
        }
        calFlag = 1
    }
    
    @IBAction func button4(_ sender: Any){
        if(calFlag == 1){
            caculaterDisplay.text=caculaterDisplay.text!+"4"
        }
        else{
            caculaterDisplay.text="4"
        }
        calFlag = 1
    }
    
    @IBAction func button5(_ sender: Any){
        if(calFlag == 1){
            caculaterDisplay.text=caculaterDisplay.text!+"5"
        }
        else{
            caculaterDisplay.text="5"
        }
        calFlag = 1
    }
    
    @IBAction func button6(_ sender: Any){
        if(calFlag == 1){
            caculaterDisplay.text=caculaterDisplay.text!+"6"
        }
        else{
            caculaterDisplay.text="6"
        }
        calFlag = 1
    }
    
    @IBAction func button7(_ sender: Any){
        if(calFlag == 1){
            caculaterDisplay.text=caculaterDisplay.text!+"7"
        }
        else{
            caculaterDisplay.text="7"
        }
        calFlag = 1
    }
    
    @IBAction func button8(_ sender: Any){
        if(calFlag == 1){
            caculaterDisplay.text=caculaterDisplay.text!+"8"
        }
        else{
            caculaterDisplay.text="8"
        }
        calFlag = 1
    }
    
    @IBAction func button9(_ sender: Any){
        if(calFlag == 1){
            caculaterDisplay.text=caculaterDisplay.text!+"9"
        }
        else{
            caculaterDisplay.text="9"
        }
        calFlag = 1
    }
    
    @IBAction func button0(_ sender: Any){
        if(calFlag == 1){
            caculaterDisplay.text=caculaterDisplay.text!+"0"
        }
        else{
            caculaterDisplay.text="0"
        }
        calFlag = 1
    }
    
    @IBAction func buttonadd(_ sender: Any){
        if(flag == 1){
            caculaterDisplay.text = "\(temp + Double(caculaterDisplay.text!)!)"
        }
        temp = Double(caculaterDisplay.text!)!
        calFlag = 2
        flag = 1
    }
    
    @IBAction func buttonreduce(_ sender: Any){
        if(flag == 2){
            caculaterDisplay.text = "\(temp - Double(caculaterDisplay.text!)!)"
        }
        temp = Double(caculaterDisplay.text!)!
        flag = 2
        calFlag = 2
    }
    
    @IBAction func buttonmultiply(_ sender: Any){
        if(flag == 3){
            caculaterDisplay.text = "\(temp * Double(caculaterDisplay.text!)!)"
        }
        temp = Double(caculaterDisplay.text!)!
        flag = 3
        calFlag = 2
    }
    
    @IBAction func buttondivide(_ sender: Any){
        if(flag == 4){
            caculaterDisplay.text = "\(temp / Double(caculaterDisplay.text!)!)"
        }
        temp = Double(caculaterDisplay.text!)!
        flag = 4
        calFlag = 2
    }
    
    @IBAction func buttoncaculator(_ sender: Any){
        if(flag == 1){
            caculaterDisplay.text = "\(temp + Double(caculaterDisplay.text!)!)"
        }
        if(flag == 2){
            caculaterDisplay.text = "\(temp - Double(caculaterDisplay.text!)!)"
        }
        if(flag == 3){
            caculaterDisplay.text = "\(temp * Double(caculaterDisplay.text!)!)"
        }
        if(flag == 4){
            caculaterDisplay.text = "\(temp / Double(caculaterDisplay.text!)!)"
        }
        calFlag = 2
    }
    
    @IBAction func point(_ sender: Any) {
        caculaterDisplay.text = caculaterDisplay.text!  + "."
    }
    
    
    @IBAction func percent(_ sender: Any) {
        temp = Double(caculaterDisplay.text!)!
        caculaterDisplay.text = "\(temp * 0.01)"
        
    }
    
    
    @IBAction func square(_ sender: Any) {
        temp = Double(caculaterDisplay.text!)!
        caculaterDisplay.text = "\(temp * temp)"
    }
    
    
    @IBAction func cube(_ sender: Any) {
        temp = Double(caculaterDisplay.text!)!
        caculaterDisplay.text = "\(temp * temp * temp)"
    }
    
    
    @IBAction func pion(_ sender: Any) {
        caculaterDisplay.text = "\(3.141592653589793)"
    }
    
    
    @IBAction func e(_ sender: Any) {
        caculaterDisplay.text = "\(2.718281828459045)"
    }
    
    
    @IBAction func root(_ sender: Any) {
        temp = Double(caculaterDisplay.text!)!
        caculaterDisplay.text = "\(sqrt(temp))"
    }
    
    @IBAction func factorial(_ sender: Any) {
        temp = Double(caculaterDisplay.text!)!
        var i = 1.0
        var b = 0.00
        var c:Int = 0
        var s = 1.0
        c = Int(temp)
        b = temp - Double(c)
        if b != 0.0{
            caculaterDisplay.text = "不是数字"
        }
        else{
        while Int(i) <= c{
            s = s*i
            i = i+1
        }
        caculaterDisplay.text = "\(s)"
        }
    }
    
    
    @IBAction func buttonminus(_ sender: Any) {
        temp = Double(caculaterDisplay.text!)!
        temp = temp * (-1)
        caculaterDisplay.text = "\(temp)"
    }
    
    @IBAction func reciprocal(_ sender: Any) {
        temp = Double(caculaterDisplay.text!)!
        temp = 1/temp
        caculaterDisplay.text = "\(temp)"
    }
    
    @IBAction func clear(_ sender: Any){
        temp = 0.00
        flag = 0
        calFlag = 0
        caculaterDisplay.text = "0"
    }
    @IBOutlet weak var caculaterDisplay: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        caculaterDisplay.text="0"
        // Do any additional setup after loading the view, typically from a nib.
    }


}

