//
//  TabbedAppFirstViewController.m
//  MyTabbedApplication
//
//  Created by Mike Smith on 4/6/13.
//  Copyright (c) 2013 Mike Smith. All rights reserved.
//

#import "TabbedAppFirstViewController.h"

@interface TabbedAppFirstViewController ()

@end

@implementation TabbedAppFirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"First", @"First");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
