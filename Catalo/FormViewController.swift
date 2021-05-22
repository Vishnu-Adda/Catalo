//
//  FormViewController.swift
//  Catalo
//
//  Created by Adda on 5/21/21.
//

import UIKit

class FormViewController: UIViewController {

    @IBOutlet var titleLabel: UITextField!
    @IBOutlet var descriptionLabel: UITextField!
    @IBOutlet var locationLabel: UITextField!
    @IBOutlet var priceLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text       = item.storedTitle
        descriptionLabel.text = item.storedDescription
        locationLabel.text    = item.storedLocation
        priceLabel.text       = item.storedPrice
    }
    
    @IBAction func submitForm(_ sender: UIButton) {
        item.storedTitle       = titleLabel.text!
        item.storedDescription = descriptionLabel.text!
        item.storedLocation    = locationLabel.text!
        item.storedPrice       = priceLabel.text!
        
        items.append(item)
    }
    
}
