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

    @IBOutlet weak var HomeCharacter: UIImageView!

        let animationImages = [UIImage(named: "dog1")!, UIImage(named: "dog2")!]

        override func viewDidLoad() {
            super.viewDidLoad()
            startAnimatingImage()
            // Do any additional setup after loading the view.
        }

    @IBAction func signUp( sender: Any) {
        startAnimatingImage()
        self.performSegue(withIdentifier: "showNextView", sender: self)

    }

    //    @IBAction func signUp( sender: Any) {
//        startAnimatingImage()
//    }

    func startAnimatingImage() {
        // Set up animation
        HomeCharacter.animationImages = animationImages
        HomeCharacter.animationDuration = 0.5
        HomeCharacter.animationRepeatCount = 0 // Set to 0 for infinite looping
        
        // Start animation
        HomeCharacter.startAnimating()
    }

}

