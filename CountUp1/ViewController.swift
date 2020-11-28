//
//  ViewController.swift
//  CountUp1
//
//  Created by Macbook on 2020/11/26.
//  Copyright © 2020年 Tabata Sorane. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var countUpLabel: UILabel!
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    countUpLabel.text = String(count)
    }

    @IBAction func plus(_ sender: Any) {
    //ラベルに文字を反映したい
        
        countUpLabel.text = String(count)
    //カウントアップしたい
    count = count + 1
    //色が１０以上になったら黄色に変更したい
        
        if count >= 10{
            changeTextColor()
        }
    
    }
    
    @IBAction func minus(_ sender: Any) {
        //ラベルに文字を反映したい
        
        //カウントアップしたい
        count = count - 1
      
        countUpLabel.text = String(count)
      //色が０以下になったら白色に変更したい
        if count <= 0 {
            resetColor()
        }
    }
    
    //新しくメソッドが作成された
    func changeTextColor(){
        countUpLabel.textColor = .yellow
    
    }
    
    func resetColor(){
        
        countUpLabel.textColor = .white
    }
    
}

