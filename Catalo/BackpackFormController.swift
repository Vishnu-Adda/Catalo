//
//  BackpackFormController.swift
//  Catalo
//
//  Created by Adda on 5/21/21.
//

import UIKit

class BackpackFormController: UIViewController {
    
    
    @IBOutlet var purposeLabel: UITextField!
    @IBOutlet var descriptionLabel: UITextField!
    @IBOutlet var itemsLabel: UITextField!
    @IBOutlet var dayLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        purposeLabel.text       = backpack.storedPurpose
        descriptionLabel.text   = backpack.storedDescription
        itemsLabel.text         = backpack.storedItems
        dayLabel.text           = backpack.storedDay
    }

    @IBAction func submitPressed(_ sender: UIButton) {
        backpack.storedPurpose       = purposeLabel.text!
        backpack.storedDescription   = descriptionLabel.text!
        backpack.storedItems         = itemsLabel.text!
        backpack.storedDay           = dayLabel.text!
        
        backpacks.append(backpack)
    }
}
