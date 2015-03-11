//
//  gachaViewController.swift
//  pokemongacha(swift)
//
//  Created by Yuta Araki on 2015/03/08.
//  Copyright (c) 2015年 Yuta Araki. All rights reserved.
//

import Foundation

import UIKit

class gachaViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var aSelector = Selector("rotationGesture:")
        
        var rotationGestureRecognizer = UIRotationGestureRecognizer(target: self, action: aSelector)
        
        var view1 = UIView(frame: CGRectMake(30, 30, 100, 100))
            
        view1.backgroundColor = .redColor()
        
        func rotationGesture(gestureRecognizer:UIRotationGestureRecognizer){
            view.backgroundColor == .blueColor()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}