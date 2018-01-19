//
//  FirstViewController.swift
//
//

import UIKit
import YogaKit


class FirstViewController: UIViewController {
    private let paddingHorizontal: YGValue = 8.0
    private let padding: YGValue = 8.0
    private let backgroundColor: UIColor = .black
    
    fileprivate var newsItems = [NewsItem]()
    
    fileprivate let contentView: UIScrollView = UIScrollView(frame: .zero)
    fileprivate let showCellIdentifier = "ShowCell"
    

    private let titleDescription = "Vote for Bernie in 2020"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // let contentView = UIView()
        let contentView = UIImageView(frame: .zero)
        let image = UIImage(named: "News")
        contentView.image = image
        contentView.backgroundColor = .lightGray
        contentView.configureLayout { (layout) in
            
            layout.isEnabled = true
            layout.flexDirection = .row
            layout.height = YGValue(self.view.bounds.size.height)
            layout.width = YGValue(self.view.bounds.size.width)
            
        }
        
        // descriptionView
        let descriptionView = UIView(frame: .zero)
        descriptionView.configureLayout { (layout) in
            layout.isEnabled = true
            layout.marginTop = 80
            layout.paddingHorizontal = self.paddingHorizontal
        }
        
        let descriptionLabel = UILabel(frame: .zero)
        descriptionLabel.font = UIFont.systemFont(ofSize: 14.0)
        descriptionLabel.numberOfLines = 3
        descriptionLabel.textColor = .white
        descriptionLabel.text = "Info"
        descriptionLabel.configureLayout { (layout) in
            layout.isEnabled = true
            layout.marginTop = 10.0
            layout.marginBottom = 5.0
        }
        descriptionView.addSubview(descriptionLabel)
        
        let newsTitleText = NSLocalizedString("Tap To View",comment:"Tap to view")
        let newsTitleLabel = showLabelFor(text: newsTitleText,
                                     font: UIFont.boldSystemFont(ofSize: 11.0))
        descriptionView.addSubview(newsTitleLabel)
        
        let newsDescriptionText = "Description: \(titleDescription)"
        let newsDescriptionLabel = showLabelFor(text: newsDescriptionText,
                                        font: UIFont.boldSystemFont(ofSize: 14.0))
        descriptionView.addSubview(newsDescriptionLabel)
        
        
        // button
        let buttonView = UIButton(frame: .zero)
        buttonView.backgroundColor = UIColor.magicbulletPrimaryColor
        buttonView.setTitleColor(UIColor.white, for: .normal)
        buttonView.titleLabel?.font = UIFont.systemFont(ofSize: 12.0)
        buttonView.titleLabel?.adjustsFontSizeToFitWidth = true
        let buttonText = NSLocalizedString("TAP_TO_VIEW",comment:"Tap to view")
        buttonView.setTitle(buttonText, for: UIControlState.normal)
        buttonView.configureLayout{ (layout)  in
            layout.isEnabled = true
            layout.height = 40
            layout.padding = 5
        }
        descriptionView.addSubview(buttonView)

        
        
        contentView.addSubview(descriptionView)
        
        // Apply the layout to view and subviews
        self.view.addSubview(contentView)
        contentView.yoga.applyLayout(preservingOrigin: false)

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillTransition(
        to size: CGSize,
        with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        // 1
        view.configureLayout{ (layout) in
            layout.width = YGValue(size.width)
            layout.height = YGValue(size.height)
        }
        // 2
        view.yoga.applyLayout(preservingOrigin: true)
    }
    func UIColorFromRGB(rgbValue: UInt) -> UIColor {
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
}

// MARK: - Private methods

private extension FirstViewController {
    func showLabelFor(
        text: String,
        font: UIFont = UIFont.systemFont(ofSize: 14.0)) -> UILabel {
        let label = UILabel(frame: .zero)
        label.font = font
        label.textColor = .lightGray
        label.text = text
        label.configureLayout { (layout) in
            layout.isEnabled = true
            layout.marginBottom = 5.0
        }
        return label
    }
    
    // TODO: Add private methods below
    
}

