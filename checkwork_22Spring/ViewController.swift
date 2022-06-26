//
//  ViewController.swift
//  checkwork_22Spring
//
//  Created by maya on 2022/06/26.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var bukiLabel: UILabel!
    @IBOutlet var tateLabel: UILabel!
    @IBOutlet var boguLabel: UILabel!
    @IBOutlet var accessoryLabel: UILabel!
    
    let bukiArray: [String] = ["さびた剣", "銅の剣", "鉄の剣"]
    let tateArray: [String] = ["木の盾", "銅の盾", "鉄の盾"]
    let boguArray: [String] = ["さびた鎧", "銅の鎧", "鉄の鎧"]
    let accessoryArray: [String] = ["ようせいの首飾り", "バトルチョーカー", "いやしの腕輪"]
    
    var index: Int = 0
    
    //ユーザデフォルトにアクセス
    let saveData: UserDefaults = UserDefaults.standard
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func change() {
        // それぞれのラベルに要素を追加
        bukiLabel.text = bukiArray[index]
        tateLabel.text = tateArray[index]
        boguLabel.text = boguArray[index]
        accessoryLabel.text = accessoryArray[index]
        
        if index == 2 {
            // indexが2の場合は0に戻す
            index = 0
        } else {
            index = index + 1
        }
    }
    
    @IBAction func random() {
        // 乱数を生成してそれぞれのindexに入れる
        let bukiIndex = Int.random(in: 0...2)
        let tateIndex = Int.random(in: 0...2)
        let boguIndex = Int.random(in: 0...2)
        let accessoryIndex = Int.random(in: 0...2)
        
        // それぞれの要素をラベルに追加
        bukiLabel.text = bukiArray[bukiIndex]
        tateLabel.text = tateArray[tateIndex]
        boguLabel.text = boguArray[boguIndex]
        accessoryLabel.text = accessoryArray[accessoryIndex]
    }
    
    @IBAction func save() {
        saveData.set(bukiLabel.text, forKey: "BUKI")
        saveData.set(tateLabel.text, forKey: "TATE")
        saveData.set(boguLabel.text, forKey: "BOGU")
        saveData.set(accessoryLabel.text, forKey: "ACCESSORY")
        
        //アラート
        let alert: UIAlertController = UIAlertController(title: "保存", message: "武器を保存しました", preferredStyle: .alert)
        alert.addAction(
            UIAlertAction(
                title: "OK", style: .default, handler: {action in print("ボタンが押されました")}
            )
        )
        
        present(alert, animated: true, completion: nil)
    }
    
    // リセットボタンを追加してみよう！(作成するときはコメントを外してね)
//    @IBAction func reset() {
//        bukiLabel.text = "---"
//        tateLabel.text = "---"
//        boguLabel.text = "---"
//        accessoryLabel.text = "---"
//
//        // indexを初期化
//        index = 0
//    }


}

