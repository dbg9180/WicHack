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
    
    @IBAction func gachaPull(_ sender: Any) {
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as UIViewController
        destinationVC.title = "Gacha"
    }
}
