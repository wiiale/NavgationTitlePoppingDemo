//
//  Created by lili on 2018/5/18.
//
//  Copyright © 2018年 fun. All rights reserved.
//

import UIKit

public protocol NavBarTitleChangeable: class {
    var preferredTextAttributes: [NSAttributedStringKey: AnyObject] { get }
}

extension NavBarTitleChangeable {
    
    public func getNavgationBarTitleTextAttributes(with item: FunNavTitleTextAttributesItem) -> [NSAttributedStringKey: AnyObject] {
        
        var textAttributes: [NSAttributedStringKey: AnyObject] = [:]
        
        if let color = item.color {
            textAttributes[.foregroundColor] = color
        }
        if let font = item.font {
            textAttributes[.font] = font
        }
        
        return textAttributes
    }
}

public struct FunNavTitleTextAttributesItem {
    let color: UIColor?
    let font: UIFont?
    init(color: UIColor? = nil, font: UIFont? = nil) {
        self.color = color
        self.font = font
    }
}
