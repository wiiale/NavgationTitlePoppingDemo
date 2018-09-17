//
//  Created by lili on 2018/5/14.
//
//  Copyright © 2018年 fun. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        navBarTitleColor = .nav_purple
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        title = "Second"
    }
}
