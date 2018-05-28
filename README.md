# NavgationTitlePoppingDemo

When I popping view controller, set titleTextAttributes called from viewWillAppear is not working. It appear if tapping on the back button instead of swipe back. NavBarTitleChangeable.swift to solve the issues.

## Before
![](https://github.com/wiiale/NavgationTitlePoppingDemo/blob/master/gifs/before.gif)

## After
![](https://github.com/wiiale/NavgationTitlePoppingDemo/blob/master/gifs/after.gif)

## Install

Copy file from [NavBarTitleChangeable.swift](NavBarTitleChangeable.swift) and [FunNavigationViewController.swift](FunNavigationViewController.swift) or just copy code to your project.

## Usage

```
class MyViewController: UIViewController, NavBarTitleChangeable {

    var preferrdTextAttributes: [NSAttributedStringKey : AnyObject] {
        let item = FunNavTitleTextAttributesItem(color: .purple, font:  .boldSystemFont(ofSize: 18))
        return getNavgationBarTitleTextAttributes(with: item)
    }
    
    ...
}
```
