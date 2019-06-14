//
//  DieViewController.swift
//  finalprojctworkpls
//
//  Created by Nicholas Spoletini on 2019-06-03.
//  Copyright © 2019 Nicholas S. All rights reserved.
//

import Foundation
import UIKit

class DieViewContoller: UIViewController {
    
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    let diceArray = ["dice1", "dice2"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        DieImages()
    }
    
    
   // buttons and views
    @IBOutlet weak var StoryAnswerDie: UIButton!
    @IBOutlet weak var DieImage: UIImageView!
    
    // func
    @IBAction func RollPressed(_ sender: UIButton) {
        DieImages()
        
    }
    
    
    func DieImages() {
        randomDiceIndex1 = Int(arc4random_uniform(2))
        
        DieImage.image = UIImage(named: diceArray[randomDiceIndex1])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        DieImages()
        }
    
    
}


