//
//  TabBarAppDelegate.m
//  MyTabBar
//
//  Created by Mike Smith on 4/6/13.
//  Copyright (c) 2013 Mike Smith. All rights reserved.
//

#import "TabBarAppDelegate.h"
#import "MyViewController.h"

@implementation TabBarAppDelegate
@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    
	tabBarController.viewControllers = [NSArray arrayWithObjects:
                                        
                                        [[MyViewController alloc]
                                         initWithText: @"The Bronx is up and the Battery’s down!"	//apostophe, not prime
                                         title: @"The Bronx"
                                         image: [UIImage imageNamed: @"bronx.png"]
                                         badge: nil
                                         ],
                                        
                                        [[MyViewController alloc]
                                         initWithText: @"How sweet it is!"
                                         title: @"Brooklyn"
                                         image: [UIImage imageNamed: @"brooklyn.png"]
                                         badge: nil
                                         ],
                                        
                                        [[MyViewController alloc]
                                         initWithText: @"People ride in a hole in the ground!"
                                         title: @"Manhattan"
                                         image: [UIImage imageNamed: @"manhattan.png"]
                                         badge: @"4,5,6"
                                         ],
                                        
                                        [[MyViewController alloc]
                                         initWithText: @"Bob Moses was a genius!"
                                         title: @"Queens"
                                         image: [UIImage imageNamed: @"queens.png"]
                                         badge: @"E"
                                         ],
                                        
                                        [[MyViewController alloc]
                                         initWithText: @"Is dat an Island?"
                                         title: @"Staten Island"
                                         image: [UIImage imageNamed: @"bgbtn (1).png"]
                                         badge: nil
                                         ],

                                        [[MyViewController alloc]
                                         initWithText: @"one two three?"
                                         title: @"Staten Island2"
                                         image: [UIImage imageNamed: @"bgbtn3.png"]
                                         badge: nil
                                         ],
                                        
                                        [[MyViewController alloc]
                                         initWithText: @"four five six"
                                         title: @"Staten Island3"
                                         image: [UIImage imageNamed: @"bgbtn3.png"]
                                         badge: nil
                                         ],
                                        
                                        nil
                                        ];
    
    tabBarController.selectedIndex = 0;
    self.window.rootViewController = tabBarController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
