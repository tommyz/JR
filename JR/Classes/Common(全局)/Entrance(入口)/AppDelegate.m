//
//  AppDelegate.m
//  JR
//
//  Created by Zj on 17/7/29.
//  Copyright © 2017年 Zj. All rights reserved.
//

#import "AppDelegate.h"
#import "JRHomeViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [self loadRootViewController];
    
    return YES;
}


- (void)loadRootViewController{
    
    //初始化
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor blackColor];
    [self.window makeKeyAndVisible];
    
    UITabBarController *tabBarVC = [[UITabBarController alloc] init];
    tabBarVC.tabBar.tintColor = JRCommonTextColor;
    
    JRHomeViewController *homeVC = [[JRHomeViewController alloc] init];
    JRNavigationController *homeNaviVC = [[JRNavigationController alloc] initWithRootViewController:homeVC];
    homeNaviVC.tabBarItem.title = @"首页";
    homeNaviVC.tabBarItem.image = [UIImage renderingModeOriginalImageNamed:@"home"];
    homeNaviVC.tabBarItem.selectedImage = [UIImage renderingModeOriginalImageNamed:@"homeSel"];
    
    UIViewController *relationVC = [[UIViewController alloc] init];
    JRNavigationController *relationNaviVC = [[JRNavigationController alloc] initWithRootViewController:relationVC];
    relationNaviVC.tabBarItem.title = @"关系";
    relationNaviVC.tabBarItem.image = [UIImage renderingModeOriginalImageNamed:@"relation"];
    relationNaviVC.tabBarItem.selectedImage = [UIImage renderingModeOriginalImageNamed:@"relationSel"];
    
    UIViewController *meVC = [[UIViewController alloc] init];
    JRNavigationController *meNaviVC = [[JRNavigationController alloc] initWithRootViewController:meVC];
    meNaviVC.tabBarItem.title = @"我";
    meNaviVC.tabBarItem.image = [UIImage renderingModeOriginalImageNamed:@"me"];
    meNaviVC.tabBarItem.selectedImage = [UIImage renderingModeOriginalImageNamed:@"meSel"];
    
    tabBarVC.viewControllers = @[homeNaviVC, relationNaviVC, meNaviVC];
    
    self.window.rootViewController = tabBarVC;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
