//
//  Buzzable.swift
//  Protocol Oriented Programming View
//
//  Created by Bob Lee on 1/17/17.
//  Copyright © 2017 BobtheDeveloper. All rights reserved.
//

import UIKit

protocol Buzzable {}

extension Buzzable where Self: UIView {
  func buzz() {
    let animation = CABasicAnimation(keyPath: "position")
    animation.duration = 0.05
    animation.repeatCount = 5
    animation.autoreverses = true
    animation.fromValue = NSValue(cgPoint: CGPoint(x: self.center.x - 5.0, y: self.center.y))
    animation.toValue = NSValue(cgPoint: CGPoint(x: self.center.x + 5.0, y: self.center.y))
    layer.add(animation, forKey: "position")
  }
}
