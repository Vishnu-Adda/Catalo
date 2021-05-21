//
//  EventFormController.swift
//  Catalo
//
//  Created by Adda on 5/21/21.
//

import UIKit

class EventFormController: UIViewController {
    
    public var time = ""
    
    
    @IBOutlet var titleLabel: UITextField!
    @IBOutlet var timeLabel: UITextField!
    @IBOutlet var descriptionLabel: UITextField!
    @IBOutlet var backpackLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let label = UILabel(frame: CGRect(x: 100, y: 200, width: 200, height: 30))
        label.center = CGPoint(x: 200, y: 185)
        label.textAlignment = .center
        label.text = time
        self.view.addSubview(label)
        
        titleLabel.text       = event.storedTitle
        timeLabel.text        = event.storedTime
        descriptionLabel.text = event.storedDesc
        backpackLabel.text    = event.storedPack
        
    }
    
    func setTime(date: String) {
        time = date
    }

    @IBAction func submitButton(_ sender: UIButton) {
        event.storedTitle = titleLabel.text!
        event.storedTime  = timeLabel.text!
        event.storedDesc  = descriptionLabel.text!
        event.storedPack  = backpackLabel.text!
    }
}
