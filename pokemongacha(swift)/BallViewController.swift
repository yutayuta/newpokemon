//
//  BallViewController.swift
//  pokemongacha(swift)
//
//  Created by Yuta Araki on 2015/03/08.
//  Copyright (c) 2015年 Yuta Araki. All rights reserved.
//

import UIKit

class BallViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var label: UILabel!
    
    //saveボタン
    @IBAction func save(sender: AnyObject) {
        let userDefaults = NSUserDefaults.standardUserDefaults()
        userDefaults.setObject(textField.text?, forKey: "saveText")
    }
    
    //loadボタン
    @IBAction func load(sender: AnyObject) {
        let userDefaults = NSUserDefaults.standardUserDefaults()
        var loadText : String! = userDefaults.stringForKey("saveText")
        label.text = loadText
    }
    //戻ってくる
    @IBAction func back() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    //変数やパーツの宣言はここ
    @IBOutlet var monsterImageView: UIImageView!
    
    let zukan = ["フシギダネ","フシギソウ","フシギバナ"]//ここに1〜151を登録。まだ準備中。
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        //乱数作成（0〜151まで）
        var number = arc4random()%152
        
        //画像割り当てn
        
        monsterImageView.image = UIImage(named: "\(number).gif")
        
        func rare(number:var){
            
            switch number{
                
            case 0:
                println("ウルトラレア！！")
            case 1..<100:
                println("ノーマル")
            case 100..<152:
                println("スーパーレア！")
            default:
                break
            }
            
        }
        
        
        if (1 <= number && number <= 151){
            println("ポケモンの名前は？")
            //入力受け付け　例えばaとする
            
            if　a == zukan[] {
                //図鑑収納
                println("成功")
                
            }else{
                println("失敗")
            }
            
        }else{
            println("全151種類！！")//この一文いらんかも？
            
        }
        
        override func didReceiveMemoryWarning(){
            
            super.didReceiveMemoryWarning()
        }
        
}