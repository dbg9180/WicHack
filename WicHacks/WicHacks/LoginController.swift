//
//  LoginController.swift
//  WicHacks
//
//  Created by Casey Chin on 3/2/24.
//

import Foundation
import UIKit

class LoginController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
              
        //Looks for single or multiple taps.
         let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))

        //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
        //tap.cancelsTouchesInView = false

        view.addGestureRecognizer(tap)
    }

    //Calls this function when the tap is recognized.
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
 
    @IBAction func Login(_ sender: Any) {
        
        
    }
    
    
}
