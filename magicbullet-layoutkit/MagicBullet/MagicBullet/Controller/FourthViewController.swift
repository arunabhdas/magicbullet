//
//  FourthViewController.swift
//
//


import UIKit
import YogaKit


class FourthViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let nickProfile = MiniProfileLayout(
            imageName: "bernie.jpg",
            name: "Bernie Sanders",
            headline: "President, White House"
        )
        
        nickProfile.arrangement(origin: CGPoint(x: 0, y: 100), width: self.view.frame.width).makeViews(in: self.view, direction: UIUserInterfaceLayoutDirection.leftToRight)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
