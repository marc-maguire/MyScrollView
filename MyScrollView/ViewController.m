//
//  ViewController.m
//  MyScrollView
//
//  Created by Marc Maguire on 2017-05-15.
//  Copyright © 2017 Marc Maguire. All rights reserved.
//

#import "ViewController.h"
#import "MyScrollView.h"

@interface ViewController ()

@property (nonatomic) MyScrollView *containerView;
@property (nonatomic) CGFloat maxY;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.containerView = [[MyScrollView alloc]init];
    self.containerView.frame = self.view.frame;
    
    [self.view addSubview:self.containerView];
    self.containerView.backgroundColor = [UIColor orangeColor];

    
    
    UIView *redView = [[UIView alloc]initWithFrame:CGRectMake(20, 20, 100, 100)];
    redView.backgroundColor = [UIColor redColor];
    
    
    UIView *greenView = [[UIView alloc]initWithFrame:CGRectMake(150, 150, 150, 200)];
    greenView.backgroundColor = [UIColor greenColor];
    
    
    
    UIView *blueView = [[UIView alloc]initWithFrame:CGRectMake(40, 400, 200, 150)];
    blueView.backgroundColor = [UIColor blueColor];
    
    UIView *yellowView = [[UIView alloc]initWithFrame:CGRectMake(100, 800, 180, 150)];
    yellowView.backgroundColor = [UIColor yellowColor];
    self.maxY = yellowView.frame.origin.y + yellowView.frame.size.height;
    self.containerView.contentSizeProperty = self.maxY;
    
    [self.containerView addSubview:redView];
    [self.containerView addSubview:greenView];
    [self.containerView addSubview:blueView];
    [self.containerView addSubview:yellowView];
    
    
}







@end
