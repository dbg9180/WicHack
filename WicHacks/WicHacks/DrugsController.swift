//
//  DrugsController.swift
//  WicHacks
//
//  Created by Casey Chin on 3/2/24.
//

import UIKit
import Foundation
import SwiftUI

class DrugsController: UIViewController{
    
    
    @IBAction func Barcode(_ sender: Any) {
    }
    
    
    let calendarView = UICalendarView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Add calendarView to your view hierarchy
        view.addSubview(calendarView)
        
        // Customize the calendar view (optional)
        let gregorianCalendar = Calendar(identifier: .gregorian)
        calendarView.calendar = gregorianCalendar
        calendarView.locale = Locale(identifier: "en_US") // Set your desired locale
        calendarView.fontDesign = .rounded
        // ... (other customizations)
        
        // Set the visible date (optional)
        let visibleDateComponents = DateComponents(
            calendar: gregorianCalendar,
            year: 2024,
            month: 2,
            day: 1
        )
        calendarView.visibleDateComponents = visibleDateComponents
        
    }
    
    
    //
    //
    //    func createCalendar() {
    //        let calendarView = UICalendarView()
    //        calendarView.translatesAutoresizingMaskIntoConstraints = false
    //
    //        calendarView.calendar = .current
    //        calendarView.availableDateRange = DateInterval(start: .now, end: .distantFuture)
    //        calendarView.locale = .current
    //        calendarView.fontDesign = .rounded
    //        calendarView.tintColor = .systemMint
    //
    //
    //        view.addSubview(calendarView)
    //
    //        NSLayoutConstraint.activate([
    //            calendarView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
    //            calendarView.trailingAnchor.constraint(equalTo: view.leadingAnchor, constant: -10),
    //            calendarView.heightAnchor.constraint(equalToConstant: 300),
    //            calendarView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)
    //        ])
    //    }
    //
    //}
    
    
    //    func configCalendarView() {
    //        let calendarView = UICalendarView()
    //        calendarView.calendar = Calendar(identifier: .gregorian)
    //        calendarView.translatesAutoresizingMaskIntoConstraints = false
    //        view.addSubview(calendarView)
    //        NSLayoutConstraint.activate([
    //            calendarView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
    //            calendarView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
    //            calendarView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
    //        ])
    //    }
    
    
}

