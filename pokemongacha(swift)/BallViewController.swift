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
    
    var i = 0
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        //乱数作成
        var number = arc4random()%10
        
        i = number
        
        monsterImageView.image = UIImage(named: "i.png")
            
            
            /*
            if number < 5{
            //ぴかちゅ
            monsterImageView.image = UIImage(named: "pikachu.png")
            }else if number > 4 && number < 8{
            //ひとかげ
            monsterImageView.image = UIImage(named: "hitokage.jpeg")
            
            }else{
            //zenigame
            monsterImageView.image = UIImage(named: "zenigame.jpeg")
            
            }
            
            
            
            }
            */
            
            override func didReceiveMemoryWarning(){
                
                super.didReceiveMemoryWarning()
                // Dispose of any resources that can be recreated.
        }
    
            
            
            
            @IBAction func back() {
                self.dismissViewControllerAnimated(true, completion: nil)
            }
            
            
            
}

