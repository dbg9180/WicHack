//
//  ViewController.swift
//  WicHacks
//
//  Created by Casey Chin on 3/2/24.
//

import UIKit

class GachaController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    let images = [UIImage(named:"KittywTable"), UIImage(named:"Birdie"), UIImage(named:"dog1")]
    let animation = Array(arrayLiteral: UIImage(named: "dog1")!, UIImage(named: "dog2")!)
    
    @IBOutlet weak var image1: UIImageView!
    

    @IBAction func gachaPull(_ sender: Any) {
        
        image1.isHidden = false
        image1.image = images.randomElement()!
//        image1.animationImages = animation
//        image1.animationDuration = 0.5
//        image1.startAnimating()

        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as UIViewController
        destinationVC.title = "Gacha"
    }
    
}
