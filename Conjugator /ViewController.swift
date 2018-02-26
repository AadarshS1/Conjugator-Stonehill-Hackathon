//
//  ViewController.swift
//  Conjugator
//
//  Created by Karthik Narayanan on 26/02/18.
//  Copyright © 2018 Karthik Narayanan. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var prefixField: UITextField!
    @IBOutlet weak var verbField: UITextField!
    @IBOutlet weak var answerBox: UITextView!
    @IBAction func conjugateButton(_ sender: UIButton) {
        getRawVerb()
        getEnding()
        getPrefix()
        getVerb()
        conjugateVerb()
        displayText()
    }
    
    func getPrefix() -> String {
        return prefixField.text!
}

    func getVerb() -> String {
        return verbField.text!
}

    func getRawVerb() -> String {
        let endIndex = getVerb().index(getVerb().endIndex, offsetBy: -2)
        let truncated = getVerb().substring(to: endIndex)
        return truncated
    }
    
    func getEnding() -> String {
        let ending = String(getVerb().characters.suffix(2))
        return ending
    }
    
    func displayText(){
        answerBox.text = getRawVerb()
    }
    
    var finalWord: String?
    
    var suffix: String?
    
    func conjugateVerb() {
        if getPrefix().lowercased() == "yo" {
            if getEnding() == "ar" {
               suffix = "o"
            }
            
            if getEnding() == "er" {
                suffix = "o"
            }
            
            if getEnding() == "ir" {
                suffix = "o"
            }
        }
        
        if getPrefix().lowercased() == "tú" {
            if getEnding() == "ar" {
                suffix = "as"
            }
            
            if getEnding() == "er" {
                suffix = "es"
            }
            
            if getEnding() == "ir" {
                suffix = "es"
            }
        }
        
        if getPrefix().lowercased() == "él" || getPrefix().lowercased() == "ella" || getPrefix().lowercased() == "usted" {
            if getEnding() == "ar" {
                suffix = "a"
            }
            
            if getEnding() == "er" {
                suffix = "e"
            }
            
            if getEnding() == "ir" {
                suffix = "e"
            }
        }
        
        if getPrefix().lowercased() == "nosotros" {
            if getEnding() == "ar" {
                suffix = "amos"
            }
            
            if getEnding() == "er" {
                suffix = "emos"
            }
            
            if getEnding() == "ir" {
                suffix = "imos"
            }
        }
        
        if getPrefix().lowercased() == "vosotros" {
            if getEnding() == "ar" {
                suffix = "áis"
            }
            
            if getEnding() == "er" {
                suffix = "éis"
            }
            
            if getEnding() == "ir" {
                suffix = "ís"
            }
        }
        
        if getPrefix().lowercased() == "ellos"
        ||
            getPrefix().lowercased() == "ellas"
  ||          getPrefix().lowercased() == "ustedes"{
            if getEnding() == "ar" {
                suffix = "an"
            }
            
            if getEnding() == "er" {
                suffix = "en"
            }
            
            if getEnding() == "ir" {
                suffix = "en"
            }
        }
    }

}
