//
//  MiniProfileLayout.swift
//  MagicBullet
//
//

import UIKit
import LayoutKit

open class MiniProfileLayout: InsetLayout<View> {
    
    public init(imageName: String, name: String, headline: String) {
        let image = SizeLayout<UIImageView>(
            width: 80,
            height: 80,
            alignment: .center,
            config: { imageView in
                imageView.image = UIImage(named: imageName)
                
                // Not the most performant way to do a corner radius, but this is just a demo.
                imageView.layer.cornerRadius = 40
                imageView.layer.masksToBounds = true
        }
        )
        
        let nameLayout = LabelLayout(text: name, font: UIFont.systemFont(ofSize: 40))
        
        let headlineLayout = LabelLayout(
            text: headline,
            font: UIFont.systemFont(ofSize: 20),
            config: { label in
                label.textColor = UIColor.darkGray
        }
        )
        
        super.init(
            insets: UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8),
            sublayout: StackLayout(
                axis: .horizontal,
                spacing: 8,
                sublayouts: [
                    image,
                    StackLayout(axis: .vertical, spacing: 2, sublayouts: [nameLayout, headlineLayout])
                ]
            ),
            config: { view in
                view.backgroundColor = UIColor.white
        }
        )
    }
}
