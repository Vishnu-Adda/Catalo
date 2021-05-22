//
//  StorageController.swift
//  Catalo
//
//  Created by Adda on 5/21/21.
//

import UIKit

class StorageController: UIViewController {
    
    var locationY = 300
    var itemY     = 300

    override func viewDidLoad() {
        super.viewDidLoad()

        if !locations.isEmpty {
            for locale in locations {
                let label = UILabel(frame: CGRect(x: 100, y: 200, width: 200, height: 30))
                label.center = CGPoint(x: 175, y: locationY)
                label.textAlignment = .left
                label.text = locale.storedTitle
                label.font = UIFont(name: "Helvetica Neue", size: 30)
                self.view.addSubview(label)
                
                locationY += 50
            }

        }
        
        if !items.isEmpty {
            for possession in items {
                let label = UILabel(frame: CGRect(x: 100, y: 200, width: 200, height: 30))
                label.center = CGPoint(x: 400, y: itemY)
                label.textAlignment = .left
                label.text = possession.storedTitle
                label.font = UIFont(name: "Helvetica Neue", size: 30)
                self.view.addSubview(label)
                
                itemY += 50
            }
        }

    }

}
