//
//  BarcodeController.swift
//  WicHacks
//
//  Created by Casey Chin on 3/2/24.
//



import UIKit
import SwiftUI
import Foundation



class BarcodeController: UIViewController {
    
     override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as UIViewController
        destinationVC.title = "Barcode"
    }
    
    
}

