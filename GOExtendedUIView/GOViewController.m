//
//  GOViewController.m
//  GOExtendedUIView
//
//  Created by Goppinath Thurairajah on 5/19/13.
//  Copyright (c) 2013 Goppinath Thurairajah. All rights reserved.
//

#import "GOViewController.h"

#import "UIView+GOExtension.h"

@interface GOViewController ()

@property (strong, nonatomic) UIView *testView;

@end

@implementation GOViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.testView = [[UIView alloc] initWithFrame:CGRectMake(20.0, 80.0, 200.0, 150.0)];
    [self.view addSubview:self.testView];
    
    [self.testView setBorderWithColor:[UIColor orangeColor] width:3.0 cornerRadius:8.0];
    
    [self.testView setShadowWithColor:[UIColor blackColor] shadowOpacity:.7 shadowRadius:2 shadowOffset:CGSizeMake(5, 5)];
    
    [self.testView printFrame];
    
    [NSTimer scheduledTimerWithTimeInterval:5.0 target:self selector:@selector(trigger) userInfo:nil repeats:NO];
 }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)trigger {
    
//    [self.testView moveX:50.0];
    [self.testView alignToSuperViewsCenter];
    [self.testView printFrame];
}

@end
