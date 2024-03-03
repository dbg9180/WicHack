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
    
    let images = [UIImage(named:"KittywTable")]
    
    @IBOutlet weak var image1: UIImageView!
    

    @IBAction func gachaPull(_ sender: Any) {
        
        image1.isHidden = false
        image1.image = UIImage(named: "KittywTable")
        image1.animationImages = []
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as UIViewController
        destinationVC.title = "Gacha"
    }
    
}
