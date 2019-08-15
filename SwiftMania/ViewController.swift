//
//  ViewController.swift
//  SwiftMania
//
//  Created by Ari Supriatna on 15/08/19.
//  Copyright © 2019 Ari Supriatna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textFieldAge: UITextField!
    @IBOutlet weak var labelAge: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func calculateAgeBtn(_ sender: UIButton) {
        if textFieldAge.text != "" {
            let ages = Int(textFieldAge.text!)
            labelAge.text = "\(calculateHumanAge(age: ages!))"
        } else {
            labelAge.text = "Please input dog age!"
        }
    }
    
    func calculateHumanAge(age: Int) -> Int {
        var humanAge = 0
        
        if age == 0 {
            return humanAge
        }
        
        if age == 1 {
            humanAge = 15
        } else if age == 2 {
            humanAge = 30
        } else {
            humanAge = ((age - 2) * 4) + 24
        }
        
        return humanAge
    }
    
}

