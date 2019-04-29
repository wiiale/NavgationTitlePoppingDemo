//
//  Created by lili on 2018/5/14.
//
//  Copyright © 2018年 fun. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, NavBarTitleChangeable {
    
    var preferredTextAttributes: [NSAttributedString.Key : AnyObject] {
        let item = NavTitleTextAttributesItem(color: .navPurple, font: .navRegular)
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

private extension UIColor {
    static let navPurple: UIColor = #colorLiteral(red: 0.4862745098, green: 0.3098039216, blue: 0.968627451, alpha: 1)
}

private extension UIFont {
    static let navRegular: UIFont = .systemFont(ofSize: 18, weight: .medium)
}
