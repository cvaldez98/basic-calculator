//
//  computationVC.swift
//  calculator
//
//  Created by Macbook on 8/2/18.
//  Copyright © 2018 Carlos. All rights reserved.
//

import UIKit

class computationVC: UIViewController {

    @IBOutlet weak var field1: UITextField!
    @IBOutlet weak var field2: UITextField!
    @IBOutlet weak var resultText: UILabel!
    @IBOutlet weak var OPLabel: UILabel!
    var computationOP: String = ""
    var result:Int = 0

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        OPLabel.text = computationOP
    }

    override func viewWillAppear(_ animated: Bool) {
        OPLabel.text = computationOP
        resultText.text = String(result)
    }
    
    @IBAction func getResult(_ sender: Any) {
        let op1:Int = Int(field1.text!)!
        let op2:Int = Int(field2.text!)!
        if(computationOP == "Add") {
            result = op1 + op2
        } else if(computationOP == "Subtract") {
            result = op1 - op2
        } else if(computationOP == "Multiply") {
            result = op1 * op2
        } else {
            result = op1 / op2
        }
        viewWillAppear(true)
    }
    
    

}
