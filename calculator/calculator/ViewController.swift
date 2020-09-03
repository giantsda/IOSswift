//
//  ViewController.swift
//  calculator
//
//  Created by user178622 on 9/3/20.
//  Copyright © 2020 user178622. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var number:Double = 0;
    var perviousNumber:Double = 0;
    var performing:Int = 0;
    var Continue:Int = 1;



    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var sign: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        label.text="Calculator!"
        label3.text="a"
        label2.text="This thing"
        sign.text="is"
    }
 
    @IBAction func number(_ sender: UIButton) {
       label2.text=String(perviousNumber)
        if (Continue == 0)
        {
            label.text=""
        }
        label.text=label.text!+String(sender.tag-1)
        number=Double(label.text!)!
        label3.text=String(number)
        Continue=1
    }
    
    @IBAction func dot(_ sender: UIButton) {
        label.text=label.text!+"."
    }
    @IBAction func erase(_ sender: Any) {
        label.text = ""
    }
    
    	
    
    @IBAction func button(_ sender: UIButton) {
        if sender.tag == 12
        {
            label.text=""
            label3.text=""
            label2.text=""
            sign.text=""
        }
        else if sender.tag == 13  //=
        {
            if performing==1
            {
            label.text = String(number+perviousNumber)
            }
            else if performing==2
            {
            label.text = String(perviousNumber-number)
            }
            else if performing==3
            {
            label.text = String(number*perviousNumber)
            }
            else if performing==4
            {
            label.text = String(perviousNumber/number)
            }
            performing = 0
        }
        else if sender.tag == 14 //+
        {
            label.text = "+"
            performing = 1
             sign.text="+"
        }
        else if sender.tag == 15 //-
        {
            label.text = "-"
            performing = 2
             sign.text="-"
        }
        
        else if sender.tag == 16 //*
        {
            label.text = "*"
            performing =  3
             sign.text="*"
        }
        else if sender.tag == 17 //   /
        {
            label.text = "/"
            performing = 4
             sign.text="/"
        }
        Continue=0
        perviousNumber=number
        
    }
    
    
    
    
}

