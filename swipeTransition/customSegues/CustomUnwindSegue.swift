//
//  CustomUnwindSegue.swift
//  swipeTransition
//
//  Created by QwertY on 04.01.2022.
//

import UIKit

class CustomUnwindSegue: UIStoryboardSegue {
    
    override func perform() {
        let source = self.source
        let destination = self.destination
        source.view.superview?.insertSubview(destination.view, aboveSubview: source.view)
        destination.view.transform = CGAffineTransform(translationX: 0, y: -source.view.frame.size.height)
        
        UIView.animate(
            withDuration: 0.75,
            delay: 0.0,
            options: .curveEaseInOut,
            animations: {
                destination.view.transform = CGAffineTransform(translationX: 0, y: 0)
            },
            completion: { finished in
                source.dismiss(animated: false, completion: nil)
            })
    }
}
