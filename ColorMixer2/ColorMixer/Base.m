//
//  Base.m
//  ColorMixer
//
//  Created by Mike Smith on 3/26/13.
//  Copyright (c) 2013 Mike Smith. All rights reserved.
//

#import "MixAppDelegate.h"
#import "View.h"
#import "Base.h"
#import "ImageView.h"

@implementation BaseView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor redColor];
        NSString *text = @"  Screen Color Picker ";
        CGRect b = self.bounds;
        UIFont *font = [UIFont italicSystemFontOfSize: 32];
        CGSize size = [text sizeWithFont: font];
        
        CGRect f = CGRectMake(0, 0, size.width, size.height);
        label = [[UILabel alloc] initWithFrame: f];
        label.font = font;
        label.backgroundColor = [UIColor clearColor];
        label.textColor = [UIColor whiteColor];
        label.text = text;
        [self addSubview: label];
        
        CGRect fImage = CGRectMake(b.origin.x+b.size.width/2-98/2,
                                   b.origin.y+b.size.height/2-105/2,
                                   98,105);
        
        
        imageView = [[ImageView alloc] initWithFrame: fImage];
        [self addSubview: imageView];
        UISwipeGestureRecognizer *recognizer = [[UISwipeGestureRecognizer alloc]
                                                initWithTarget: self action: @selector(swipe:)
                                                ];
/*
		recognizer.direction = UISwipeGestureRecognizerDirectionRight;
		[self addGestureRecognizer: recognizer];
		recognizer = [[UISwipeGestureRecognizer alloc]
                      initWithTarget: self action: @selector(swipe:)
                      ];
		recognizer.direction = UISwipeGestureRecognizerDirectionLeft;
		[self addGestureRecognizer: recognizer];
		recognizer = [[UISwipeGestureRecognizer alloc]
                      initWithTarget: self action: @selector(swipe:)
                      ];
		recognizer.direction = UISwipeGestureRecognizerDirectionUp;
		[self addGestureRecognizer: recognizer];
		recognizer = [[UISwipeGestureRecognizer alloc]
                      initWithTarget: self action: @selector(swipe:)
                      ];
		recognizer.direction = UISwipeGestureRecognizerDirectionDown;
		[self addGestureRecognizer: recognizer];
*/
    }
    return self;
}
- (void) resetSwitchInApp: (MixAppDelegate*) app
{
    app.view.mySwitch.on=false;
    app.view.backgroundColor = [UIColor colorWithRed: 0 green: 0 blue: 0 alpha: 1.0];
    app.red = 0;
    app.blue = 0;
    app.green = 0;
    app.view.greenSlider.value=0.0;
    app.view.redSlider.value=0.0;
    app.view.blueSlider.value=0.0;
}
- (void) touchesBegan: (NSSet *) touches withEvent: (UIEvent *) event {
    if (touches.count > 0) {
        UITouch *touch = [touches anyObject];
        CGPoint point = [touch locationInView: self];
        if ((point.x > 110) && (point.x < 110+98) && (point.y > 250) && (point.y < 250 + 105)){
            MixAppDelegate *app = [UIApplication sharedApplication].delegate;
            
            app.last = ((UIViewController *)[app.tabBarController.viewControllers objectAtIndex: 1]).title;
            app.tabBarController.selectedIndex= 1;
            
        }
    }
}


- (void) touchesMoved: (NSSet *) touches withEvent: (UIEvent *) event {
    if (touches.count > 0) {
        UITouch *touch = [touches anyObject];
        CGPoint point = [touch locationInView: self];
//        imageView.center = point;	//Move the littleView to a new location.
        
    }
}

- (void) touchesEnded: (NSSet *) touches withEvent: (UIEvent *) event {
	imageView.backgroundColor = [UIColor yellowColor];
}

- (void) touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event{
    
}


@end
