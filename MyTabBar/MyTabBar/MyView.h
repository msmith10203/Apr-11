//
//  MyView.h
//  MyTabBar
//
//  Created by Mike Smith on 4/6/13.
//  Copyright (c) 2013 Mike Smith. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MyViewController;

@interface MyView : UITextView {
    MyViewController *viewController;    
}

- (id) initWithFrame: (CGRect) frame controller: (MyViewController *) c;
@end
