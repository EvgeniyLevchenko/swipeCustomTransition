//
//  TeslaLogoViewController.swift
//  swipeTransition
//
//  Created by QwertY on 03.01.2022.
//

import UIKit

class TeslaViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addDownSwipeGestureRecognizer()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    private func addDownSwipeGestureRecognizer() {
        let downSwipeRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(viewSwipedDown))
        downSwipeRecognizer.numberOfTouchesRequired = 1
        downSwipeRecognizer.direction = .down
        view.addGestureRecognizer(downSwipeRecognizer)
    }
    
    @objc private func viewSwipedDown() {
        performSegue(withIdentifier: "fromTeslaVC", sender: self)
    }
}
