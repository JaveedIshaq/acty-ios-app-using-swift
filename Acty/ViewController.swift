//
//  ViewController.swift
//  Acty
//
//  Created by Javeed Ishaq on 15/06/2019.
//  Copyright © 2019 Javeed Ishaq. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var emotions = ["happy", "sad", "excited", "concerned", "surprised", "trusting", "worried", "in anticipation", "disappointed", "surprised", "frustrated"]
    
    var activities = ["swimming with dolphins", "planting trees", "sailing in the ocean", "reading a book", "riding a horse", "watching a movie", "riding a bike", "cleaning your house", "dining with friends", "running from a lion", "crawling in a desert"]
    
    

    @IBOutlet weak var actingTask: UILabel!
    
    @IBAction func generateActingTask() {
        //generate random emotion
        let randomEmotionIndex = Int(arc4random_uniform(UInt32(emotions.count)))
        let randomEmotion = emotions[randomEmotionIndex]
        
        //generate random activity
        let randomActivityIndex = Int(arc4random_uniform(UInt32(activities.count)))
        let randomActivity = activities[randomActivityIndex]
        
        //modify the label
        let newActingTask = "You are " + randomEmotion + " " + randomActivity + "!"
        actingTask.text = newActingTask
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    }


}

