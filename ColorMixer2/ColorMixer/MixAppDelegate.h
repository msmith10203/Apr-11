//
//  MixAppDelegate.h
//  ColorMixer
//
//  Created by Mike Smith on 3/24/13.
//  Copyright (c) 2013 Mike Smith. All rights reserved.
//

#import <UIKit/UIKit.h>
@class View;

@interface MixAppDelegate : UIResponder <UIApplicationDelegate, UITabBarControllerDelegate>{
    View *view;
    View *baseView;
	UIWindow *_window;
    float red;
    float blue;
    float green;
    NSString *last;    
    UITabBarController *tabBarController;
}

- (void) switchValueChanged: (id) sender;

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) View *view;
@property (strong, nonatomic) View *baseView;
@property float red;
@property float green;
@property float blue;
@property NSString *last;
@property UITabBarController *tabBarController;

@end
