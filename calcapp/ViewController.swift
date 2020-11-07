//
//  ViewController.swift
//  calcapp
//
//  Created by Sultan Isakov on 11/8/20.
//

import UIKit

class ViewController: UIViewController {

    var sum = 0
    
    @IBOutlet weak var int1: UITextField!
    @IBOutlet weak var int2: UITextField!
    
    
    @IBOutlet weak var Sum: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sum = UserDefaults.standard.integer(forKey: "sum")
        Sum.isHidden = true
    }
    

    @IBAction func sumButt(_ sender: UIButton) {
        let num1 = Double(int1.text!)
        let num2 = Double(int2.text!)
        
        if int1.text!.isEmpty && int2.text!.isEmpty {
            
            Sum.isHidden = false
            Sum.textColor = UIColor.red
            Sum.text = "Enter a num"
        } else {
            
            sum = Int(Double(num1! + num2!))
            
            Sum.isHidden = false
            Sum.textColor = UIColor.orange
            Sum.text = "Sum is \(sum)"
            
            UserDefaults.standard.setValue(sum, forKey: "")
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "resShower" {
            (segue.destination as! HistoryViewController).sum = self.sum
        }
    }
    
    @IBAction func handleResShower(_ sender: UIButton) {
        performSegue(withIdentifier: "resShower", sender: nil)
    }
}

