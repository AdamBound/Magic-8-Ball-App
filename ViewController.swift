//
//  ViewController.swift
//  Magic 8-Ball
//
//  Created by Adam Lazarczyk on 9/8/18.
//  Copyright © 2018 Adam Lazarczyk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var RandomBallStatement : Int = 0
    
    @IBOutlet weak var BallImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: Any) {
        newBallImage()
    }
    func newBallImage(){
        RandomBallStatement = Int(arc4random_uniform(4))
        BallImageView.image = UIImage(named: ballArray[RandomBallStatement])
        
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?){
        newBallImage()
    }
}

