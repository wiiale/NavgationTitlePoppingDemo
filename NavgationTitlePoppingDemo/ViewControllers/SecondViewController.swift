//
//  Created by lili on 2018/5/14.
//
//  Copyright © 2018年 fun. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, NavBarTitleChangeable {

    var preferredTextAttributes: [NSAttributedStringKey : AnyObject] {
        let item = FunNavTitleTextAttributesItem(color: .nav_black, font:  .nav_small)
        return getNavgationBarTitleTextAttributes(with: item)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        title = "Second"
    }
}
