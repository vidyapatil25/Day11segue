//
//  ViewController.swift
//  segue
//
//  Created by Felix-ITS016 on 15/11/19.
//  Copyright © 2019 Felix. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func performButton(_ sender: UIButton) {
        performSegue(withIdentifier: "seg", sender: self)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "seg"
        {
            let next = segue.destination as! NextViewController
            next.name = textField.text!
            
        }
    }
}

