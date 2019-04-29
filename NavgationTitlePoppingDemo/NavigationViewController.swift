//
//  Created by lili on 2018/5/18.
//
//  Copyright © 2018年 fun. All rights reserved.
//

import UIKit

class NavigationViewController: UINavigationController {

    private var topViewControllerNavBarTitleAttributes: [NSAttributedString.Key: AnyObject]? {
        return (topViewController as? NavBarTitleChangeable)?.preferredTextAttributes
    }
    
    private func setNavBarTitleAttributes(_ attributes: [NSAttributedString.Key: AnyObject]) {
        navigationBar.titleTextAttributes = attributes
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let attributes = topViewControllerNavBarTitleAttributes {
            setNavBarTitleAttributes(attributes)
        }
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        super.pushViewController(viewController, animated: animated)
        
        if let attributes = topViewControllerNavBarTitleAttributes {
            setNavBarTitleAttributes(attributes)
        }
    }
    
    override func popViewController(animated: Bool) -> UIViewController? {
        let popViewController = super.popViewController(animated: animated)
        
        if let attributes = topViewControllerNavBarTitleAttributes {
            setNavBarTitleAttributes(attributes)
        }
        transitionCoordinator?.animate(alongsideTransition: nil) { [weak self] _ in
            if let attributes = self?.topViewControllerNavBarTitleAttributes {
                self?.setNavBarTitleAttributes(attributes)
            }
        }
        return popViewController
    }
}
