//
//  Created by lili on 2018/5/17.
//
//  Copyright © 2018年 fun. All rights reserved.
//

import UIKit

extension DispatchQueue {
    
    fileprivate static var onceTracker = [String]()
    
    fileprivate class func once(token: String, block: () -> Void) {
        objc_sync_enter(self)
        defer { objc_sync_exit(self) }
        
        if onceTracker.contains(token) {
            return
        }
        
        onceTracker.append(token)
        block()
    }
}

extension UINavigationController {
    
    open override func viewDidLoad() {
        UINavigationController.swizzle()
        super.viewDidLoad()
    }
    
    private static let onceToken = UUID().uuidString
    
    class func swizzle() {
        DispatchQueue.once(token: onceToken) {
            let cla = UINavigationController.self
            if
                let push = class_getInstanceMethod(cla, #selector(pushViewController(_:animated:))),
                let fun_push = class_getInstanceMethod(cla, #selector(fun_pushViewController(_:animated:))),
                let pop = class_getInstanceMethod(cla, #selector(popViewController(animated:))),
                let fun_pop = class_getInstanceMethod(cla, #selector(fun_popViewController(animated:)))
            {
                method_exchangeImplementations(push, fun_push)
                method_exchangeImplementations(pop, fun_pop)
            }
        }
    }
    
    @objc func fun_pushViewController(_ viewController: UIViewController, animated: Bool) {
        fun_pushViewController(viewController, animated: animated)
        setNavBarTitleColor()
    }
    
    @objc func fun_popViewController(animated: Bool) -> UIViewController? {
        let popViewController = fun_popViewController(animated: animated)
        setNavBarTitleColor()
        transitionCoordinator?.animate(alongsideTransition: nil) { [weak self] _ in
            self?.setNavBarTitleColor()
        }
        return popViewController
    }
    
    fileprivate func setNavBarTitleColor() {
        navigationBar.titleTextAttributes = [
            .foregroundColor: topViewController?.navBarTitleColor ?? .black
        ]
    }
}

private var navBarTitleColorKey: Void?

extension UIViewController {
    open var navBarTitleColor: UIColor? {
        get {
            return objc_getAssociatedObject(self, &navBarTitleColorKey) as? UIColor ?? .black
        }
        set {
            objc_setAssociatedObject(self, &navBarTitleColorKey, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            navigationController?.setNavBarTitleColor()
        }
    }
}
