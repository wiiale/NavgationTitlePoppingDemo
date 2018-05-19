//
//  Created by lili on 2018/5/14.
//
//  Copyright © 2018年 fun. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, NavBarTitleChangeable {
    
    var preferrdTextAttributes: [NSAttributedStringKey : AnyObject] {
        let item = FunNavTitleTextAttributesItem(color: .nav_purple, font:  .nav_regular)
        return getNavgationBarTitleTextAttributes(with: item)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        title = "First"
    }
  
    @IBAction func didTapPush(_ sender: Any) {
        let vc = SecondViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}
