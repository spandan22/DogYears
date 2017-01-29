//
//  ViewController.swift
//  DogYears
//
//  Created by Daniel Musser on 1/26/17.
//  Copyright © 2017 Daniel Musser. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
   
    @IBOutlet weak var dogPicture: UIImageView!
    
    @IBOutlet weak var ageTextField: UITextField!
    
    @IBOutlet weak var ageExplanation: UILabel!
    
    @IBOutlet weak var textAtTopOfScreen: UILabel!
    
    var dogsCalculatedAge:Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // hides the text at the bottom of the app initially
        ageExplanation.isHidden = true
        
        ageTextField.text = nil
    }
    
    @IBAction func buttonThatCalculatesAge(_ sender: Any) {
        // Checks to see if the user actually entered a number
        if ageTextField.text == "" {
            textAtTopOfScreen.text = "Please enter a number and press the button to learn your dog's age in dog Years"
        }
        // Changes the picture and text based on the Dog's calculated age
        else if ageTextField.text != nil {
            // Dismisses the keyboard when the button is preesed
            ageTextField.resignFirstResponder()
            
            textAtTopOfScreen.text = "See Below for your dog's age in dog years"
            
            dogsCalculatedAge = Int(ageTextField.text!)! * 7
            
            switch dogsCalculatedAge {
            case 0:
                textAtTopOfScreen.text = "Please enter a number greater than 1"
            case 7:
                ageExplanation.text = "Your dog is just a wee baby at \(dogsCalculatedAge)."
                dogPicture.image = #imageLiteral(resourceName: "Baby Dog.jpg")
            case 8...30:
                ageExplanation.text = "Your dog is in the prime of his life and is currently \(dogsCalculatedAge)."
                dogPicture.image = #imageLiteral(resourceName: "Cool Dog.jpg")
            case 31...40:
                ageExplanation.text = "Your dog is \(dogsCalculatedAge) and still has many good dog years ahead of him."
                dogPicture.image = #imageLiteral(resourceName: "Middle Dog.jpg")
            case 41...65:
                ageExplanation.text = "Your dog is going through his mid-life crisis at \(dogsCalculatedAge) and trying to learn some new tricks."
                dogPicture.image = #imageLiteral(resourceName: "Mid Life Crisis Dog.jpg")
            case 66...70:
                ageExplanation.text = "Your dog has reached his retirement years and is now \(dogsCalculatedAge)."
                dogPicture.image = #imageLiteral(resourceName: "Old Dog with Cane.jpg")
            case 71...100:
                ageExplanation.text = "Your dog is a whopping \(dogsCalculatedAge) years old and could end his mortal sojourn at any moment."
                dogPicture.image = #imageLiteral(resourceName: "Old Dog.jpg")
            default:
                ageExplanation.text = "Your dog is \(dogsCalculatedAge), and is almost certainly not alive. Don’t worry though. All dogs go to heaven."
                dogPicture.image = #imageLiteral(resourceName: "Angel Dog.jpg")
            }
            
            // Makes the text at the bottom of the screen
            // appear after the changes have been made
            ageExplanation.isHidden = false
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

