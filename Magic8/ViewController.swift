//
//  ViewController.swift
//  Magic8
//
//  Created by Angelica Bato on 11/10/18.
//  Copyright © 2018 Angelica Bato. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
let answers = ["It is certain.", "It is decidedly so.", "Without a doubt.", "Yes - definitely.", "You may rely on it.", "As I see it, yes.", "Most likely.", "Outlook good.", "Yes.", "Signs point to yes.", "Reply hazy, try again.", "Ask again later.", "Better not tell you now.", "Cannot predict now.", "Concentrate and ask again.", "Don't count on it.", "My reply is no.", "My sources say no.", "Outlook not so good.", "Very doubtful."]

    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var magic8BallImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func tapGestureRecognized(_ sender: Any) {
        magic8BallImage.shake(duration: 0.5)
        answerLabel.text = answers.randomElement()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            magic8BallImage.shake(duration: 0.5)
            answerLabel.text = answers.randomElement()
        }
    }
}

extension UIView {
    func shake(duration: CFTimeInterval) {
        let translation = CAKeyframeAnimation(keyPath: "transform.translation.x");
        translation.timingFunction = CAMediaTimingFunction(name: .linear)
        translation.values = [-5, 5, -5, 5, -3, 3, -2, 2, 0]
        
        let rotation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
        rotation.values = [-5, 5, -5, 5, -3, 3, -2, 2, 0].map {
            ( degrees: Double) -> Double in
            let radians: Double = (.pi * degrees) / 180.0
            return radians
        }
        
        let shakeGroup: CAAnimationGroup = CAAnimationGroup()
        shakeGroup.animations = [translation, rotation]
        shakeGroup.duration = duration
        self.layer.add(shakeGroup, forKey: "shakeIt")
    }
}

