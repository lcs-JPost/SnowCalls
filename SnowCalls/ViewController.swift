//
//  ViewController.swift
//  SnowCalls
//
//  Created by Justus Post on 2019-11-28.
//  Copyright © 2019 Justus Post. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
     // Mark: Properties
    @IBOutlet weak var OutputText: UILabel!
    @IBOutlet weak var inputText: UITextView!
    var output = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Convert(_ sender: Any) {
        guard let input = inputText.text, input.count > 0 else {
            OutputText.text = "Please enter phone number to analysze"
            return
        }
        for number in input {
            switch number {
            case "1":
                // Add a one to the output
                output += "1"
            case "A", "B", "C", "2":
                // Add a two to the output
                output += "2"
            case "D", "E", "F", "3":
                // Add a three to the output
                output += "3"
            case "G"..."I", "4":
                // Add a four to the output
                output += "4"
            case "J"..."L", "5":
                // Add a five to the output
                output += "5"
            case "M"..."O", "6":
                // Add a six to the output
                output += "6"
            case "P"..."S", "7":
                // Add a seven to the output
                output += "7"
            case "T"..."V", "8":
                // Add a eight to the output
                output += "8"
            case "W"..."Z", "9":
                // Add a nine to the output
                output += "9"
            default:
                output += "0"

            }
        }
        
    }
    
}

