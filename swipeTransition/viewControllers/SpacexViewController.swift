//
//  SpacexViewController.swift
//  swipeTransition
//
//  Created by QwertY on 03.01.2022.
//

import UIKit

class SpacexViewController: UIViewController {
    
    @IBAction private func unwindTeslaVC(_ sender: UIStoryboardSegue) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addUpSwipeGestureRecognizer()
        addDownSwipeGestureRecognizer()
    }
    
    override func unwind(for unwindSegue: UIStoryboardSegue, towards subsequentVC: UIViewController) {
        let segue = CustomUnwindSegue(
            identifier: unwindSegue.identifier,
            source: unwindSegue.source,
            destination: unwindSegue.destination)
        segue.perform()
    }
    
    private func addUpSwipeGestureRecognizer() {
        let upSwipeRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(viewSwipedUp))
        upSwipeRecognizer.numberOfTouchesRequired = 1
        upSwipeRecognizer.direction = .up
        view.addGestureRecognizer(upSwipeRecognizer)
    }
    
    @objc private func viewSwipedUp() {
        performSegue(withIdentifier: "toTeslaVC", sender: self)
    }
    
    private func addDownSwipeGestureRecognizer() {
        let downSwipeRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(viewSwipedDown))
        downSwipeRecognizer.numberOfTouchesRequired = 1
        downSwipeRecognizer.direction = .down
        view.addGestureRecognizer(downSwipeRecognizer)
    }
    
    @objc private func viewSwipedDown() {
        performSegue(withIdentifier: "fromSpacexVC", sender: self)
    }
}
