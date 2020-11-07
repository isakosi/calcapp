//
//  HistoryViewController.swift
//  calcapp
//
//  Created by Sultan Isakov on 11/8/20.
//

import UIKit

class HistoryViewController: UIViewController {
    
    var sum = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resLabel.text = "Res: \(sum)"

    }
    
    @IBOutlet weak var resLabel: UILabel!
}
