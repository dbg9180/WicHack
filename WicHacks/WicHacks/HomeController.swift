//
//  HomeController.swift
//  WicHacks
//
//  Created by Casey Chin on 3/2/24.
//

import UIKit
import SwiftUI
import Foundation



class HomeController: UIViewController {


    @IBAction func Gacha(_ sender: Any) {

    }
    
    
    @IBAction func Drugs(_ sender: Any) {
        let barcodeView = UIHostingController(rootView: WicHacks.Barcode())
        self.present(barcodeView, animated: true, completion: nil)
    }
}
