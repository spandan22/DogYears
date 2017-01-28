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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        ageExplanation.isHidden = true
    }
    
    @IBAction func buttonThatCalculatesAge(_ sender: Any) {
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

