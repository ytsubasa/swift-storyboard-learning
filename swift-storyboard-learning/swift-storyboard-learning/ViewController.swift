//
//  ViewController.swift
//  swift-storyboard-learning
//
//  Created by 吉田翔 on 2025/08/24.
//

import UIKit

class ViewController: UIViewController {

 
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        imageView.image = UIImage(named: "curry")
    }


}

