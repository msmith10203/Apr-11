//
//  MyViewController.h
//  MyTabBar
//
//  Created by Mike Smith on 4/6/13.
//  Copyright (c) 2013 Mike Smith. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyViewController : UIViewController {
    NSString *text;
}

-(id) initWithText : (NSString*) t
              title: (NSString*) title
              image: (UIImage*) image
              badge: (NSString*) badge;

@property (nonatomic, copy) IBOutlet NSString *text;
@end
