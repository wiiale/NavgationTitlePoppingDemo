//
//  Created by lili on 2018/5/14.
//
//  Copyright © 2018年 fun. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        title = "Second"
        navBarTitleColor = .navBlack
    }
}

private extension UIColor {
    static let navBlack: UIColor = #colorLiteral(red: 0.2834439278, green: 0.2834514081, blue: 0.2834473848, alpha: 1)
}
