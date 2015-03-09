//
//  BallViewController.swift
//  pokemongacha(swift)
//
//  Created by Yuta Araki on 2015/03/08.
//  Copyright (c) 2015年 Yuta Araki. All rights reserved.
//

import UIKit


class BallViewController: UIViewController {
    
    
    //変数やパーツの宣言はここ
    @IBOutlet var monsterImageView: UIImageView!
    
    var i:String
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        //乱数作成
        var number = arc4random()%10
        
        i = "\(number)"
        
        monsterImageView.image = UIImage(named: "i.png")
        
    }
    
    
    override func didReceiveMemoryWarning(){
        
        
        super.didReceiveMemoryWarning()
        
        
        @IBAction func back() {
            self.dismissViewControllerAnimated(true, completion: nil)
        }
    }
    
}

