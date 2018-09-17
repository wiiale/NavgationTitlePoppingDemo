# NavgationTitlePoppingDemo

Setting titleTextAttributes called from viewWillAppear not working when I popping view controller. It appear if tapping on the back button instead of swipe back. NavBarTitleChangeable.swift to solve this issue.

[简书](https://www.jianshu.com/p/169ac01d461f)

## Before
![issue.gif](https://github.com/wiiale/NavgationTitlePoppingDemo/blob/master/gifs/before.gif)

## After
![salvation.gif](https://github.com/wiiale/NavgationTitlePoppingDemo/blob/master/gifs/after.gif)

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
