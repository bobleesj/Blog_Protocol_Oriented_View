//
//  Poppable.swift
//  Protocol Oriented Programming View
//
//  Created by Bob Lee on 1/17/17.
//  Copyright © 2017 BobtheDeveloper. All rights reserved.
//

import UIKit

protocol Poppable {}

extension Poppable where Self: UIView {
  func pop() {
    UIView.animate(withDuration: 0.3,
                   delay: 0,
                   options: .curveEaseIn,
                   animations: { self.alpha = 1.0 }) { (animationCompleted) in
                    if animationCompleted == true {
                      UIView.animate(withDuration: 0.3,
                                     delay: 2.0,
                                     options: .curveEaseOut,
                                     animations: { self.alpha = 0.0 },
                                     completion: nil)
                    }
    }
  }
}
