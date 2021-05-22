//
//  BorrowsViewController.swift
//  Catalo
//
//  Created by Adda on 5/21/21.
//

import UIKit

class BorrowsViewController: UIViewController {
    
    var borrowY = 250

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if !borrows.isEmpty {
            for take in borrows {
                
                let dateFormatter : DateFormatter = DateFormatter()
                dateFormatter.dateFormat = "MM-dd HH:mm:ss"
                let date = Date()
//                let currentDate = dateFormatter.string(from: date)
                
                let newDate = date.addingTimeInterval(TimeInterval(Double(take.storedTime)!*3600))
                let newBorrowDate = dateFormatter.string(from: newDate)
                
                let label = UILabel(frame: CGRect(x: 100, y: 200, width: 400, height: 30))
                label.center = CGPoint(x: 175, y: borrowY)
                label.textAlignment = .center
                label.text = "\(take.storedName) \(newBorrowDate)"
                label.font = UIFont(name: "Helvetica Neue", size: 30)
                self.view.addSubview(label)
                
                borrowY += 50
            }

        }
    }
}
