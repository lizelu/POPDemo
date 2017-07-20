//
//  ViewController.swift
//  PopDemo
//
//  Created by Mr.LuDashi on 2017/7/13.
//  Copyright © 2017年 ZeluLi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var subLayer: CALayer!
    var repeatTag = true
    
    @IBOutlet var testView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.subLayer = CALayer()
        self.view.layer.addSublayer(self.subLayer)
        resetSublayer()
        addSpringAnimation(type: kPOPLayerTranslationX)
    }
    
    func resetSublayer() {
        self.subLayer.pop_removeAllAnimations()
        self.subLayer.opacity = 1.0
        self.subLayer.transform = CATransform3DIdentity
        self.subLayer.masksToBounds = true
        self.subLayer.backgroundColor = UIColor.orange.cgColor
        self.subLayer.bounds = CGRect(origin: CGPoint.zero, size: CGSize(width: 80, height: 80))
        self.subLayer.cornerRadius = self.subLayer.bounds.width / 2
        self.subLayer.position = CGPoint(x: self.view.center.x, y: 200)
    }

    func addSpringAnimation(type: String) {
        self.subLayer.pop_removeAllAnimations()
        
        let springAnimation = POPSpringAnimation(propertyNamed: type)
        springAnimation?.springBounciness = 10
        
        if type == kPOPLayerTranslationX {
            if repeatTag {
                springAnimation?.toValue = 100
            } else {
                springAnimation?.toValue = -100
            }
        }
        
        self.subLayer.pop_add(springAnimation, forKey: <#T##String!#>)
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

