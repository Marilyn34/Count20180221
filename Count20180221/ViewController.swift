//
//  ViewController.swift
//  Count20180221
//
//  Created by 伊藤 遥 on 2018/02/21.
//  Copyright © 2018年 Haruka Ito. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var label: UILabel!
    var count: Int = 0
    @IBOutlet var plusButton: UIButton!
    @IBOutlet var minusButton: UIButton!
    @IBOutlet var buttons:[UIButton]!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func plus() {
        count += 1
        label.text = String(count)
        
        changeColor()
        hideButton()
    }
    
    @IBAction func minus() {
        count -= 1
        label.text = String(count)
        
        changeColor()
        hideButton()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func changeColor() {
        if count >= 10 {
            label.textColor = UIColor.red
        } else if count <= -10 {
            label.textColor = UIColor.blue
        } else {
            label.textColor = UIColor.black
        }
    }
    
    func hideButton() {
        if count >= 20 {
            plusButton.isHidden = true
        } else if count <= -20 {
            minusButton.isHidden = true
        } else {
            plusButton.isHidden = false
            minusButton.isHidden = false
        }
    }


}

