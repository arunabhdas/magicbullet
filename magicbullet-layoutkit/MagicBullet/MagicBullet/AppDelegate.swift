//
//  AppDelegate.swift
//  MagicBullet
//
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        
        
        let height = application.statusBarFrame.size.height
        print("---------------------------------------------------")
        print(NSString(format: "%.2f", height))
        print("---------------------------------------------------")
        // window?.rootViewController = ViewController()
        let nav1 = UINavigationController()
        let first = FirstViewController(nibName: nil, bundle: nil)
        nav1.viewControllers = [first]
        nav1.tabBarItem = UITabBarItem(title: "News", image: UIImage(named:"News"), tag: 1)
        
        let nav2 = UINavigationController()
        let second = SecondViewController(nibName: nil, bundle: nil)
        nav2.viewControllers = [second]
        nav2.tabBarItem = UITabBarItem(title: "Catalog", image: UIImage(named:"Catalog"), tag: 2)
        
        let nav3 = UINavigationController()
        let third = ThirdViewController(nibName: nil, bundle: nil)
        nav3.viewControllers = [third]
        nav3.tabBarItem = UITabBarItem(title: "Home", image: UIImage(named:"Home"), tag: 3)
        
        let nav4 = UINavigationController()
        let fourth = FourthViewController(nibName: nil, bundle: nil)
        nav4.viewControllers = [fourth]
        nav4.tabBarItem = UITabBarItem(title: "About", image: UIImage(named:"About"), tag: 4)
        
        let nav5 = UINavigationController()
        let fifth = FifthViewController(nibName: nil, bundle: nil)
        nav5.viewControllers = [fifth]
        nav5.tabBarItem = UITabBarItem(title: "More", image: UIImage(named:"IconMore"), tag: 5)
        
        let tabs = UITabBarController()
        tabs.viewControllers = [nav1, nav2, nav3, nav4, nav5]
        
        
        window?.backgroundColor = .white
        
        self.window!.rootViewController = tabs;
        window?.makeKeyAndVisible()
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

