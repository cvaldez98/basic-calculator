//
//  ViewController.swift
//  calculator
//
//  Created by Macbook on 8/2/18.
//  Copyright © 2018 Carlos. All rights reserved.
//

import UIKit

public let operands:Array = ["Add", "Subtract", "Multiply", "Divide"]

let textCellIdentifier = "TextCell"
let segueIdentifier = "computationSegue"

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var table: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return operands.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("Hi")
        let cell = tableView.dequeueReusableCell(withIdentifier: textCellIdentifier, for: indexPath as IndexPath)
        let row = indexPath.row
        cell.textLabel?.text = operands[row]
        return cell
    }
    
    func tableView(_ table: UITableView, didSelectRowAt indexPath:
        IndexPath) {
        // add this line in later
        table.deselectRow(at: indexPath as IndexPath, animated: true)
        let row = indexPath.row
        print(operands[row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == segueIdentifier,
            let destination = segue.destination as? computationVC,
            let operandIndex = table.indexPathForSelectedRow?.row {
            print("going!!!")
            destination.computationOP = operands[operandIndex]
        } else {
            print("ummm")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        table.delegate = self
        table.dataSource = self
    }

}

