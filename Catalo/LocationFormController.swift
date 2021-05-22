//
//  LocationFormController.swift
//  Catalo
//
//  Created by Adda on 5/21/21.
//

import UIKit

class LocationFormController: UIViewController {

    @IBOutlet var titleLabel: UITextField!
    @IBOutlet var descriptionLabel: UITextField!
    @IBOutlet var cityLabel: UITextField!
    @IBOutlet var stateLabel: UITextField!
    @IBOutlet var streetLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text       = location.storedTitle
        descriptionLabel.text = location.storedDescription
        cityLabel.text        = location.storedCity
        stateLabel.text       = location.storedState
        streetLabel.text      = location.storedStreet
    }

    @IBAction func submitPressed(_ sender: Any) {
        location.storedTitle       = titleLabel.text!
        location.storedDescription = descriptionLabel.text!
        location.storedCity        = cityLabel.text!
        location.storedState       = stateLabel.text!
        location.storedStreet      = streetLabel.text!
        
        locations.append(location)
    }
}
