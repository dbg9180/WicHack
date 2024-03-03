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
        // Do any additional setup after loading the view.
    }

//
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as UIViewController
        destinationVC.title = "Drugs"
    }


    var body: some View {
            NavigationView {
                VStack {
                    Text("Welcome to My App")
                    NavigationLink(destination: WicHacks.Barcode()) {
                        Text("Scan Barcode")
                    }
                }
                .navigationTitle("Home")
            }
        }


}
