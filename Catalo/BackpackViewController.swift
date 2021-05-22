//
//  BackpackViewController.swift
//  Catalo
//
//  Created by Adda on 5/21/21.
//

import UIKit

class BackpackViewController: UIViewController {
    
    var backpackY = 250

    override func viewDidLoad() {
        super.viewDidLoad()

        if !backpacks.isEmpty {
            var packCount = 1
            for pack in backpacks {
                
                let label = UILabel(frame: CGRect(x: 100, y: 200, width: 400, height: 30))
                label.center = CGPoint(x: 175, y: backpackY)
                label.textAlignment = .center
                label.text = "Backpack \(packCount): \(pack.storedItems)"
                label.font = UIFont(name: "Helvetica Neue", size: 30)
                self.view.addSubview(label)
                
                backpackY += 50
                packCount += 1
            }

        }
    }

}
