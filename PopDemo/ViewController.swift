//
//  ViewController.swift
//  PopDemo
//
//  Created by Mr.LuDashi on 2017/7/13.
//  Copyright © 2017年 ZeluLi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var testView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func tapButton(_ sender: Any) {
        if let anim = POPSpringAnimation(propertyNamed: kPOPLayerBounds) {
            anim.toValue = NSValue(cgRect: CGRect(x: 10, y: 10, width: 40, height: 40))
            testView.pop_add(anim, forKey: "size")
        }
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

