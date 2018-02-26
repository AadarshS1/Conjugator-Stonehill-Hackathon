//
//  ViewController.swift
//  Conjugator
//
//  Created by Karthik Narayanan on 26/02/18.
//  Copyright © 2018 Karthik Narayanan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var tensePicker: UIPickerView!
    
    var tenses: [String] = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.tenses.delegate = self
        self.tenses.dataSource = self
        
        tenses = ["Yo", "Tú", "Él", "Ella", "Usted", "Nosotros", "Vosotros", "Ellos", "Ellas", "Ustedes"]
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

