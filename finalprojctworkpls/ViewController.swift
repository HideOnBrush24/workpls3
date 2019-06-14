//
//  ViewController.swift
//  finalprojctworkpls
//
//  Created by Nicholas Spoletini on 2019-05-31.
//  Copyright © 2019 Nicholas S. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   

    // vars and lets
    
    // our story
    let story1 = "Once there was a class full of teens working on a final project for a subject they had 9 days left in, you ask yourself what project do I want to do?"
    let answer1a = "story app"
    let answer1b = "stopwatch app."
    
    
    let story2 = "Oh you picked stopwatch? uhhh easy or hard?."
    let answer2a = "easy."
    let answer2b = "easy 2."
    
    let story3 = "WowEEE you picked story app sounds fun, what do you want it to be on?"
    let answer3a = "LeTs dO soMeThiNG eaSy Xd."
    let answer3b = "lets do something nice and orginal."
    
    let story4 = "you picked easy for the stopwatch and boom you got a 50% on it becuase of how lazy you were and how you just wanted your mark for the corse. same thing for easy, and for easy 2 if I cant find out how to make them have the same line of code. Eyyy bois I did it, im the next bill gates or steve jobs."
    let story5 = "you picked the hard option and as you were close to being done the last day came and most of the things you wanted to add could not be made cuz you were takeing too long to make everything look nice and orginal. So tuff luck you got 0%"
    let story6 = "you pick to do something easy for the story and wowe you got a 50% on it and passed the couse good job you lazy boi..."
    
    var storyIndex: Int = 1
    var buttonPressed: Int = 1

    //save pl
    
    //funcs
    func storyTitle() {
        switch self.storyIndex{
        case 1:
            Question.text = story1
            
        case 2:
            Question.text = story2
            
        case 3:
            Question.text = story3
            
        case 4:
            Question.text = story4
            
        case 5:
            Question.text = story5
            
        default:
            Question.text = story6
        }
        
    }
    
    func greenTopButton(){
        switch storyIndex{
        case 1:
            storyIndex += 2
            buttonPressed += 2
            
        case 2:
            storyIndex += 2
            buttonPressed += 2
            
        case 3:
            storyIndex += 3
            buttonPressed += 3
            
        default:
            storyIndex = 1
            buttonPressed = 1
        }
        
    }
    
    func redBottomButton(){
        switch storyIndex{
        case 1:
            storyIndex += 1
            buttonPressed += 1
            
        case 2:
            storyIndex += 2
            buttonPressed += 2
            
        case 3:
            storyIndex += 2
            buttonPressed += 2
            
        default:
            storyIndex = 1
            buttonPressed = 1
        }
    }
    
    func buttonChnageStory() {
        switch buttonPressed{
        case 1:
            GreenButton.setTitle(answer1a, for: .normal)
            RedButton.setTitle(answer1b, for: .normal)
        case 2:
            GreenButton.setTitle(answer2a, for: .normal)
            RedButton.setTitle(answer2b, for: .normal)
        case 3:
            GreenButton.setTitle(answer3a, for: .normal)
            RedButton.setTitle(answer3b, for: .normal)

        default:
            GreenButton.setTitle("Try Again", for: .normal)
            RedButton.setTitle("try Again", for: .normal)
        }
        
    }

    // buttons and texts
    @IBOutlet weak var Question: UITextView!
    @IBOutlet weak var RedButton: UIButton! // Tag 2
    @IBOutlet weak var GreenButton: UIButton! // Tag 1
    @IBOutlet weak var DieRoom: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    // segue func
    @IBAction func DieRoompressed(_ sender: AnyObject) {
        if (DieRoom != nil) {
            
            print("Error")
            
        } else {
            
            print("Welcome to the die room")
            
            self.performSegue(withIdentifier: "DieRoom", sender: self)
        }
    }
    
    
    // button pressed func
    @IBAction func ButtonPressed(_ sender: UIButton) {
        if sender.tag == 1{
            greenTopButton()
            storyTitle()
            buttonChnageStory()
        }
            
        else if sender.tag == 2{
            redBottomButton()
            buttonChnageStory()
            storyTitle()
        }
    }
    
    
   
}
