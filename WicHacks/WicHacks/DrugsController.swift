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
        let barcodeView = UIHostingController(rootView: WicHacks.Barcode())
        self.present(barcodeView, animated: true, completion: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as UIViewController
        destinationVC.title = "Drugs"
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
}
