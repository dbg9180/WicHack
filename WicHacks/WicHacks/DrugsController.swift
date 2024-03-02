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
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createCalendar()
    }
    
    func createCalendar() {
        let calendarView = UICalendarView()
        calendarView.translatesAutoresizingMaskIntoConstraints = false
        
        calendarView.calendar = .current
        calendarView.availableDateRange = DateInterval(start: .now, end: .distantFuture)
//        calendarView.locale = .current
        calendarView.fontDesign = .rounded
//        calendarView.delegate = self
        calendarView.tintColor = .systemMint

        
        view.addSubview(calendarView)
        
        NSLayoutConstraint.activate([
            calendarView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            calendarView.trailingAnchor.constraint(equalTo: view.leadingAnchor, constant: -10),
            calendarView.heightAnchor.constraint(equalToConstant: 300),
            calendarView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)
        ])
    }

}

extension HomeController: UICalendarViewDelegate {
    func calendarView(_ calendarView: UICalendarView, decorationFor dateComponents: DateComponents) -> UICalendarView.Decoration? {
        return nil
    }

    
    
}
