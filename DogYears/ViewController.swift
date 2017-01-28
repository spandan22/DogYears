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
    
    var calculatedAge: Int?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // hides the text at the bottom of the app initially
        ageExplanation.isHidden = true
    }
    
    @IBAction func buttonThatCalculatesAge(_ sender: Any) {
        if ageTextField.text == nil {
            textAtTopOfScreen.text = "Please enter a number and press the button to learn your dog's age"
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

