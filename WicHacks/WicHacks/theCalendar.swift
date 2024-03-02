//
//  Calendar.swift
//  WicHacks
//
//  Created by Casey Chin on 3/2/24.
//

import Foundation
import UIKit

class theCalendar: UIView {
    
    let calView = UICalendarView()
    
    let gregorianCalendar = Calendar(identifier: .gregorian)
    
    func config() {
        
        calView.calendar = gregorianCalendar
        
        calView.locale = Locale(identifier: "zh_TW")
        
        calView.fontDesign = .rounded
        
        // Set the date to display.
        calView.visibleDateComponents = DateComponents(
            calendar: gregorianCalendar,
            year: 2024,
            month: 2,
            day: 1
        )
    }
    
    config()
    
    
}

