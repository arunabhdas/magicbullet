//
//  HelloWorldLayout.swift
//  MagicBullet
//
//


import UIKit
import LayoutKit


open class HelloWorldLayout: InsetLayout<View> {
    
    public init(text: String = "Hello World!") {
        super.init(
            insets: EdgeInsets(top: 4, left: 4, bottom: 4, right: 8),
            sublayout: StackLayout(
                axis: .horizontal,
                spacing: 4,
                sublayouts: [
                    SizeLayout<UIImageView>(width: 50, height: 50, config: { imageView in
                        imageView.image = UIImage(named: "earth")
                    }),
                    LabelLayout(text: text, alignment: .center)
                ]
            )
        )
    }
}
