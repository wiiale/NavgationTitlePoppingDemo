//
//  Created by lili on 2018/5/17.
//
//  Copyright © 2018年 fun. All rights reserved.
//

import UIKit

extension UINavigationController {
    
    public func setNavgationBarTitleTextAttributes(color: UIColor?, font: UIFont?) {
        
        var textAttributes: [NSAttributedStringKey: AnyObject] = [:]
        
        if let c = color {
            textAttributes[.foregroundColor] = c
        }
        if let f = font {
            textAttributes[.font] = f
        }
        
        navigationBar.titleTextAttributes = textAttributes
    }
    
}


