//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // IBOutlet me permite referencia um elemento do UI
    @IBOutlet weak var leftDiceImageView: UIImageView!
    @IBOutlet weak var rightDiceImageView: UIImageView!
    
    let DICES: Array<UIImage> = [
        UIImage(imageLiteralResourceName: "DiceOne"),
        UIImage(imageLiteralResourceName: "DiceTwo"),
        UIImage(imageLiteralResourceName: "DiceThree"),
        UIImage(imageLiteralResourceName: "DiceFour"),
        UIImage(imageLiteralResourceName: "DiceFive"),
        UIImage(imageLiteralResourceName: "DiceSix")
    ]
    var leftDiceIndex: Int = 0
    var rightDiceIndex: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Left Dice Index: \(leftDiceIndex)")
        print("Right Dice Index: \(rightDiceIndex)")
    }

    // IBAction me permite referencias uma ação no elemento UI
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        leftDiceIndex = Int.random(in: 0...5)
        // DICES.randomElement() Poderia usar tb
        leftDiceImageView.image = DICES[leftDiceIndex]
        print("Left Dice Index: \(leftDiceIndex+1)")

        rightDiceIndex = Int.random(in: 0...5)
        // DICES.randomElement() Poderia usar tb
        rightDiceImageView.image = DICES[rightDiceIndex]
        print("Right Dice Index: \(rightDiceIndex+1)")
    }
    
}

