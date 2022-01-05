//
//  AppleViewController.swift
//  swipeTransition
//
//  Created by QwertY on 31.12.2021.
//

import UIKit

class AppleViewController: UIViewController {
    
    @IBAction private func unwindSpacexVC(_ sender: UIStoryboardSegue) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSwipeGestureRecognizer()
    }
    
    override func unwind(for unwindSegue: UIStoryboardSegue, towards subsequentVC: UIViewController) {
        let segue = CustomUnwindSegue(
            identifier: unwindSegue.identifier,
            source: unwindSegue.source,
            destination: unwindSegue.destination)
        segue.perform()
    }
    
    private func addSwipeGestureRecognizer() {
        let upSwipeRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(viewSwipedUp))
        upSwipeRecognizer.numberOfTouchesRequired = 1
        upSwipeRecognizer.direction = .up
        self.view.addGestureRecognizer(upSwipeRecognizer)
    }
    
    @objc private func viewSwipedUp() {
        performSegue(withIdentifier: "toSpacexVC", sender: self)
    }
}

