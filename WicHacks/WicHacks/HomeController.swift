//
//  HomeController.swift
//  WicHacks
//
//  Created by Casey Chin on 3/2/24.
//

import UIKit
import SwiftUI
//import found



class HomeController: UIViewController {


    @IBAction func Gacha(_ sender: Any) {

    }
    
    
<<<<<<< HEAD
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createCalendar()
    }
    
    func createCalendar() {
        let calendarView = UICalendarView()
        calendarView.translatesAutoresizingMaskIntoConstraints = false
        
        calendarView.calendar = .current
        calendarView.locale = .current
        calendarView.fontDesign = .rounded
        calendarView.delegate = self
        
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

    

    
    
    
=======
    @IBAction func Drugs(_ sender: Any) {
        let barcodeView = UIHostingController(rootView: WicHacks.Barcode())
        self.present(barcodeView, animated: true, completion: nil)
    }
>>>>>>> f52b5cc045037d8f6bad29e642918c0c2d494120
}
