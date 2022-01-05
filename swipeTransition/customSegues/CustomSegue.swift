//
//  CustomSegue.swift
//  swipeTransition
//
//  Created by QwertY on 03.01.2022.
//

import UIKit

class CustomSegue: UIStoryboardSegue {
    
    override func perform() {
        let source = self.source
        let destination = self.destination
        source.view.superview?.insertSubview(destination.view, aboveSubview: source.view)
        destination.view.transform = CGAffineTransform(translationX: 0, y: 2 * source.view.frame.size.height)
        
        UIView.animate(
            withDuration: 0.75,
            delay: 0.0,
            options: .curveEaseInOut,
            animations: {
                destination.view.transform = CGAffineTransform(translationX: 0, y: 0)
            },
            completion: { finished in
                source.present(destination, animated: false, completion: nil)
            })
    }
}
