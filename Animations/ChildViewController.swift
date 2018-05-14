//
//  ChildViewController.swift
//  Animations
//
//  Created by Spandana Natuva on 5/13/18.
//  Copyright © 2018 Spandana Natuva. All rights reserved.
//

import Foundation
import UIKit

class ChildViewController: UIViewController {
    @IBOutlet weak var childContentView: UIView?
    var animationType: AnimationType = .Animation01
    @IBOutlet weak var widthConstraint: NSLayoutConstraint?
    override func viewDidLoad() {
        super.viewDidLoad()
       self.setBackgroundColor()
        self.childContentView?.layer.cornerRadius = 20
    }
    
    @IBAction func dismiss(_ sender: Any) {
        print("dismiss")
                UIView.animate(withDuration: 0.3, animations: {
                    self.view.center.y = (self.view.superview?.bounds.height)! * 1.5
                }) { (_) in
                    self.view.removeFromSuperview()
                }
    }

    func setBackgroundColor() {
        switch animationType {
        case .Animation01:
            self.view.backgroundColor = UIColor.black.withAlphaComponent(0.3)
        case .Animation02:
            self.view.backgroundColor = UIColor.black.withAlphaComponent(0.3)
        case .Animation03:
            self.view.backgroundColor = UIColor.black.withAlphaComponent(0.0)
        default:
            self.view.backgroundColor = UIColor.black.withAlphaComponent(0.3)
        }
    }
}
