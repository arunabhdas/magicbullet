//
//  ViewController.swift
//
//

import UIKit
import YogaKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let contentView = UIView()
        contentView.backgroundColor = .lightGray
        contentView.configureLayout { (layout) in
            
            layout.isEnabled = true
            layout.flexDirection = .row
            layout.width = 320
            layout.height = 80
            layout.marginTop = 40
            layout.marginLeft = 10
            layout.padding = 10
            
        }
        // child1
        let child1 = UIView()
        child1.backgroundColor = .red
        child1.configureLayout{ (layout)  in
            layout.isEnabled = true
            layout.width = 80
        }
        contentView.addSubview(child1)
        
        // child2
        let child2 = UIView()
        child2.backgroundColor = .blue
        child2.configureLayout{ (layout)  in
            layout.isEnabled = true
            layout.width = 80
            layout.flexGrow = 1
        }
        contentView.addSubview(child2)
        
        
        
        view.addSubview(contentView)
        contentView.yoga.applyLayout(preservingOrigin: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

