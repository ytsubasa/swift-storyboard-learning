//
//  ViewController.swift
//  swift-storyboard-learning
//
//  Created by 吉田翔 on 2025/08/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        button.setTitle("クリック", for: UIControl.State.normal) // 追加
        
        imageView.image = UIImage(named: "curry")
        
        self.view.backgroundColor = .white
    }

    @IBAction func buttonAction(_ sender: Any) {
        
        let nextViewController = self.storyboard?.instantiateViewController(withIdentifier: "HomeView") as! HomeView
//                nextViewController.modalPresentationStyle = .fullScreen
                self.present(nextViewController, animated: true, completion: nil)
    }
    
}

