//
//  BorrowFormController.swift
//  Catalo
//
//  Created by Adda on 5/21/21.
//

import UIKit

class BorrowFormController: UIViewController {

    
    @IBOutlet var nameLabel: UITextField!
    @IBOutlet var timeLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = borrow.storedName
        timeLabel.text = borrow.storedTime
    }

    @IBAction func submitPressed(_ sender: UIButton) {
        borrow.storedName = nameLabel.text!
        borrow.storedTime = timeLabel.text!
        
        borrows.append(borrow)
    }
}
