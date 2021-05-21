//
//  CalendarViewController.swift
//  Catalo
//
//  Created by Adda on 5/21/21.
//

import FSCalendar
import UIKit

class CalendarViewController: UIViewController, FSCalendarDelegate {
    
    @IBOutlet var calendar: FSCalendar!

    override func viewDidLoad() {
        super.viewDidLoad()
        calendar.delegate = self
    }
    
    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE MM-dd-YYYY"
        let string = formatter.string(from: date)
        print("\(string)")
        
        let vc = storyboard?.instantiateViewController(identifier: "event_fc") as! EventFormController
        
        vc.setTime(date: string)
        
        present(vc, animated: true)
    }

}
