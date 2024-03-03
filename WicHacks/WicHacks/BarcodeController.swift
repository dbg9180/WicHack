//
//  BarcodeController.swift
//  WicHacks
//
//  Created by Casey Chin on 3/2/24.
//


import UIKit
import SwiftUI
import Foundation

import CodeScanner

class BarcodeController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    var body: some View {
            NavigationView {
                VStack {
                    Text("Welcome to My App")
                    NavigationLink(destination: Barcode()) {
                        Text("Scan Barcode")
                    }
                }
                .navigationTitle("Home")
            }
        }


}

