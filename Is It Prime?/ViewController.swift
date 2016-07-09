//
//  ViewController.swift
//  Is It Prime?
//
//  Created by Ryan Lim on 7/8/16.
//  Copyright © 2016 Ryan Lim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numberTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func IsItPrime(sender: AnyObject) {
        
        if let number = Int(numberTextField.text!) {
        
            var isPrime = true
        
            if number == 1 {
            
                isPrime = false
            
            }
            if number != 2 && number != 1 {
            
                for var i = 2; i < number; i++ {
                
                    if number % i == 0 {
                        
                        isPrime = false
                        break
                    
                    }
                
                }
            
            }
        
            if isPrime {
                resultLabel.text = "That number is a prime"
            } else {
                resultLabel.text = "That number is not a prime"
            }
        
        } else {
            
            resultLabel.text = "Error, enter a whole number"
            
        }
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

