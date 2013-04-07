//
//  NavigationAppDelegate.h
//  MyNavigation
//
//  Created by Mike Smith on 4/6/13.
//  Copyright (c) 2013 Mike Smith. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NavigationAppDelegate : UIResponder <UIApplicationDelegate> {
    UIWindow *_window;
	NSArray *names;
	NSMutableArray *visited;}

- (void) nextStation;

@property (strong, nonatomic) UIWindow *window;
@end
