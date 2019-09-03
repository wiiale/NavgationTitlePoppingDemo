//
//  Created by lili on 2018/5/14.
//
//  Copyright © 2018年 fun. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, NavBarTitleChangeable {

    var preferredTextAttributes: [NSAttributedString.Key : AnyObject] {
        return getNavgationBarTitleTextAttributes(with: .init(color: .navBlack, font: .navSmall))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

private extension UIColor {
    static let navBlack: UIColor = #colorLiteral(red: 0.2834439278, green: 0.2834514081, blue: 0.2834473848, alpha: 1)
}

private extension UIFont {
    static let navSmall: UIFont = .systemFont(ofSize: 13, weight: .medium)
}
