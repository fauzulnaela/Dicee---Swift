//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    //IBOutlet allows me to reference a UI element
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    //Array of UIImage
    let diceImages = ["DiceOne", "DiceTwo", "DiceThree", "DiceFour", "DiceFive", "DiceSix"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //WHO.WHAT = VALUE
        diceImageView1.image = UIImage(imageLiteralResourceName: "DiceSix")
        diceImageView2.image = UIImage(imageLiteralResourceName: "DiceTwo")
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        diceImageView1.image = UIImage(imageLiteralResourceName: diceImages[Int.random(in: 0...5)])
        diceImageView2.image = UIImage(imageLiteralResourceName: diceImages[Int.random(in: 0...5)])

    }
}

