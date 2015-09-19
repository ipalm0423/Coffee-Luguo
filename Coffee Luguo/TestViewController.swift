//
//  TestViewController.swift
//  Coffee Luguo
//
//  Created by 陳冠宇 on 2015/9/19.
//  Copyright © 2015年 陳冠宇. All rights reserved.
//

import UIKit


class TestViewController: UIViewController {


    
    
    @IBOutlet weak var utubeView: YTPlayerView!
    
    @IBOutlet weak var headLabel: UILabel!
    
    @IBOutlet weak var subTextView: UITextView!
    
    @IBOutlet weak var rightLabel: UILabel!
    
    @IBOutlet weak var leftLabel: UILabel!
    
    @IBOutlet weak var sliderBar: UISlider!
    
    @IBOutlet weak var leftButton: UIButton!
    
    @IBOutlet weak var rightButton: UIButton!
    
    
    //utube
    var uTubeAdress: [String] = ["35gCiF22P0k"]
    
    //view
    var headLabelText = ["香氣", "回甘", "酸感", "香醇", "苦味"]
    
    //question
    var questionIndex = 0
    var dataAnswer: [Double] = [0, 0, 0, 0, 0]
    var totalName = ["RankJmaica", "RankBazil", "RankColombia", "RankEthiopia", "RankIndonesia", "RankSumatra"]
    var totalRank: [[Double]] = [[3, 3, 1, 3, 2], [2, 3, 2, 2, 1], [3, 2, 2, 3, 1], [3, 2, 2, 3, 2], [1, 2, 1, 2, 3], [3, 2, 1, 2, 3]]
    var RankJmaica = [3, 3, 1, 3, 2]
    var RankBazil = [2, 3, 2, 2, 1]
    var RankColombia = [3, 2, 2, 3, 1]
    var RankEthiopia = [3, 2, 2, 3, 2]
    var RankIndonesia = [1, 2, 1, 2, 3]
    var RankSumatra = [3, 2, 1, 2, 3]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        self.openYoutube()
    }
    
    func openYoutube() {
        self.utubeView.loadWithVideoId(self.uTubeAdress[self.questionIndex])
    }

    
    
    
    
    
//calculate
    func calculateScore() -> [Double] {
        var score: [Double] = [0, 0, 0, 0, 0, 0]
        var index = 0
        for rank in self.totalRank {
            var i = 0
            var singleScore: Double = 0
            for num in rank {
                singleScore += num * self.dataAnswer[i]
                i++
            }
            score[index] = singleScore
            index++
        }
        print("final score are: \(score)", terminator: "")
        return score
    }
    
    
    
    
//button action
    
    @IBAction func rightButtonTouch(sender: AnyObject) {
    }
       
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
