//
//  NavigationAppDelegate.m
//  MyNavigation
//
//  Created by Mike Smith on 4/6/13.
//  Copyright (c) 2013 Mike Smith. All rights reserved.
//

#import "NavigationAppDelegate.h"
#import "MyViewController.h"

@implementation NavigationAppDelegate
@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //Seed the random number generator with a different seed
	//each time the app is run.
	srand(time(NULL));
    
    names = [NSArray arrayWithObjects:
             @"Newark",
             @"Jersey City",
             @"Paterson",
             @"Elizabeth",
             @"Edison",
             @"Woodbridge Township",
             @"Lakewood Township",
             @"Toms River",
             
             @"Hamilton",
             @"Trenton",
             @"Clifton",
             @"Camden",
             @"Brick Township",
             @"Cherry Hill",
             @"Passaic",
             @"Middletown Township",
             @"Union City",
             @"Old Bridge Township",
             @"Gloucester Township",
             @"East Orange",
             @"Bayonne",
             @"Franklin",
             @"North Bergen",
             
             @"Vineland",
             @"Union",
             @"Piscataway",
             @"New Brunswick",
             
             @"Bloomfield",
             @"West Orange",
             @"Evesham Township",
             nil
             ];
    
	NSString *firstName = [names objectAtIndex: 0];
	MyViewController *firstController = [[MyViewController alloc] initWithTitle: firstName];
	visited = [NSMutableArray arrayWithObject: firstController];
    
	self.window = [[UIWindow alloc] initWithFrame: [UIScreen mainScreen].bounds];
	// Override point for customization after application launch.
    
	self.window.rootViewController =
    [[UINavigationController alloc] initWithRootViewController: [visited objectAtIndex: 0]];
    
    ((UINavigationController *)self.window.rootViewController).toolbarHidden = NO;
	[self.window makeKeyAndVisible];
	return YES;
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void) nextStation {
    
	UINavigationController *navigationController =
    (UINavigationController *)self.window.rootViewController;
    
	NSUInteger i = navigationController.viewControllers.count;
	if (i == names.count) {
		//We are currently visiting the last station, and can go no further.
		return;
	}
    
	if (visited.count <= i) {
		//This station is being visited for the first time.
		[visited addObject:
         [[MyViewController alloc] initWithTitle: [names objectAtIndex: i]]
         ];
	}
	
	[navigationController pushViewController: [visited objectAtIndex: i] animated: YES];
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
