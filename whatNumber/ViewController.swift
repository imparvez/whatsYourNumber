//
//  ViewController.swift
//  whatNumber
//
//  Created by  Parvez shaikh on 11/27/15.
//  Copyright © 2015  Parvez shaikh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Logic Of App
    //1. To create a random number
    
    var correct = arc4random_uniform(5)//Correct is now INT value/dataType

    @IBOutlet weak var message: UILabel!
    
    @IBOutlet weak var guessField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //printing correct variable on view load
        print(correct)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func checkButton(sender: UIButton) {
        var guess = guessField.text//Taking input in strng format
        
        //Creating a variable which will convert random number i.e correct variable into STRING and after that we can compare it.
        var correctGuess = String(correct)//Making correct variable in a stringify version
        
        if(guess == correctGuess) {
            message.text = "Correct ANswer"
        } else {
            message.text = "Wrong guess"
        }
        
    }

}

