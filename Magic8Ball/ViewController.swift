//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Andrea Christie on 1/3/19.
//  Copyright © 2019 Andrea Christie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var magic8BallView: UIImageView!
    
    var ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var random8BallIndex: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        update8BallImage()
    }
    
    func update8BallImage() {
        random8BallIndex = Int.random(in: 0 ... 4)
        magic8BallView.image = UIImage(named: ballArray[random8BallIndex])
    }
    
    @IBAction func shakeMeButtonPressed(_ sender: UIButton) {
        update8BallImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        update8BallImage()
    }


}

