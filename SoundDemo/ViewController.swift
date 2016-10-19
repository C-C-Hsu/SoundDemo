//
//  ViewController.swift
//  SoundDemo
//
//  Created by 許家旗 on 2016/10/19.
//  Copyright © 2016年 許家旗. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {

    @IBAction func playSound(_ sender: AnyObject) {
        
        var soundID:SystemSoundID = 0
        // 取得聲音檔路徑
        let path = Bundle.main.path(forResource: "msg", ofType: "wav")
        // 將路徑轉換為 NSURL 格式
        let baseURL = NSURL(fileURLWithPath: path!)
        // 將聲音檔取得的 ID 給予 soundID 變數,變數前面加上 & 符號是傳址的意思
        AudioServicesCreateSystemSoundID(baseURL, &soundID)
        // 播放聲音
        AudioServicesPlayAlertSound(soundID)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

