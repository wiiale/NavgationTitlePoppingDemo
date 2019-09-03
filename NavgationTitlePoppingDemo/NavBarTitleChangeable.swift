//
//  Created by lili on 2018/5/18.
//
//  Copyright © 2018年 fun. All rights reserved.
//

import UIKit

public protocol NavBarTitleChangeable: class {
    
    var preferredTextAttributes: [NSAttributedString.Key: AnyObject] { get }
    
    func getNavgationBarTitleTextAttributes(with item: NavTitleTextAttributesItem) -> [NSAttributedString.Key: AnyObject]
}

public extension NavBarTitleChangeable {
    
    func getNavgationBarTitleTextAttributes(with item: NavTitleTextAttributesItem) -> [NSAttributedString.Key: AnyObject] {
        
        var textAttributes: [NSAttributedString.Key: AnyObject] = [:]
        
        if let color = item.color {
            textAttributes[.foregroundColor] = color
        }
        if let font = item.font {
            textAttributes[.font] = font
        }
        
        return textAttributes
    }
}

public struct NavTitleTextAttributesItem {
    let color: UIColor?
    let font: UIFont?
    init(color: UIColor? = nil, font: UIFont? = nil) {
        self.color = color
        self.font = font
    }
}
