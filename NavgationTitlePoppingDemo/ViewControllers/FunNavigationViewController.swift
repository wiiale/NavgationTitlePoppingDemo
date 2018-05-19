//
//  Created by lili on 2018/5/18.
//
//  Copyright © 2018年 fun. All rights reserved.
//

import UIKit

class FunNavigationViewController: UINavigationController {

    private var topViewControllerNavBarTitleAttributes: [NSAttributedStringKey: AnyObject]? {
        return (topViewController as? NavBarTitleChangeable)?.preferrdTextAttributes
    }
    
    private func setNavBarTitleAttributes(_ attributes: [NSAttributedStringKey: AnyObject]) {
        navigationBar.titleTextAttributes = attributes
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