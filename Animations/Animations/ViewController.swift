//
//  ViewController.swift
//  Animations
//
//  Created by Spandana Natuva on 5/13/18.
//  Copyright © 2018 Spandana Natuva. All rights reserved.
//

import UIKit

enum AnimationType: Int {
    case Animation01 = 1
    case Animation02 = 2
    case Animation03 = 3
    case Animation04 = 4
    case Animation05 = 5
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonClicked(button: UIButton) {
        switch button.tag {
        case 1:
            if let childVC = UIStoryboard(name: "ChildVC", bundle: nil).instantiateInitialViewController() as? ChildViewController {
                self.addChildViewController(childVC)
                childVC.animationType = .Animation01
                childVC.view.frame = self.view.frame
                childVC.view.center.y = self.view.bounds.height * -0.5
                self.view.addSubview(childVC.view)
                childVC.didMove(toParentViewController: self)
                UIView.animate(withDuration: 0.3, animations: {
                    childVC.view.center.y = self.view.center.y
                })
            }
        case 2:
            if let childVC = UIStoryboard(name: "ChildVC", bundle: nil).instantiateInitialViewController() as? ChildViewController {
                self.addChildViewController(childVC)
                childVC.animationType = .Animation02
                childVC.view.frame = self.view.frame
                childVC.view.center.y = self.view.bounds.height * 1.5
                self.view.addSubview(childVC.view)
                childVC.didMove(toParentViewController: self)
                UIView.animate(withDuration: 0.3, animations: {
                    childVC.view.center.y = self.view.center.y
                })
            }
        case 3:
            if let childVC = UIStoryboard(name: "ChildVC", bundle: nil).instantiateInitialViewController() as? ChildViewController {
                self.addChildViewController(childVC)
                childVC.animationType = .Animation03
                childVC.view.frame = self.view.frame
                childVC.view.center.y = self.view.bounds.height * 1.5
                childVC.childContentView?.backgroundColor = UIColor.magenta
                childVC.childContentView?.layer.shadowColor = UIColor.black.cgColor
                childVC.childContentView?.layer.shadowOpacity = 1
                childVC.childContentView?.layer.shadowOffset = CGSize.zero
                childVC.childContentView?.layer.shadowRadius = 10
                self.view.addSubview(childVC.view)
                childVC.didMove(toParentViewController: self)
                UIView.animate(withDuration: 0.3, animations: {
                    childVC.view.center.y = self.view.center.y * 1.3
                })
            }
        case 4:
            
            print("Animation4")
        case 5:
            print("Animation5")
        default:
            return
        }
    }


}

