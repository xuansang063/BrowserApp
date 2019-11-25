//
//  AppDelegate.swift
//  BrowserApp
//
//  Created by SangNX on 11/24/19.
//  Copyright © 2019 nxsang063@gmail.com. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        //---->screate HomeViewControler
        window = UIWindow(frame: UIScreen.main.bounds)
        let homeVC = HomeVC()
        let navHome = UINavigationController(rootViewController: homeVC)
        
        let browserVC = BrowserVC()
        let navBrowser = UINavigationController(rootViewController: browserVC)

        let downVC = DownloadsVC()
        let navDown = UINavigationController(rootViewController: downVC)

        let moreVC = MoreVC()
        let navMore = UINavigationController(rootViewController: moreVC)
        
        navHome.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)
        navBrowser.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 1)
        navDown.tabBarItem = UITabBarItem(tabBarSystemItem: .downloads, tag: 2)
        navMore.tabBarItem = UITabBarItem(tabBarSystemItem: .more, tag: 3)
        
        let tabbar = UITabBarController()
        tabbar.viewControllers = [ navHome, navBrowser, navDown, navMore ]
        
        self.window?.rootViewController = tabbar
        self.window?.makeKeyAndVisible()
        
        if #available(iOS 13.0, *) {
            window?.overrideUserInterfaceStyle = .light
        }
        
        //----->
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

