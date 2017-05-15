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

@property (nonatomic) UIView *containerView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.containerView = [[MyScrollView alloc]initWithFrame:self.view.bounds];
    [self.view addSubview:self.containerView];
    
    
    UIView *redView = [[UIView alloc]initWithFrame:CGRectMake(20, 20, 100, 100)];
    redView.backgroundColor = [UIColor redColor];
    
    UIView *greenView = [[UIView alloc]initWithFrame:CGRectMake(150, 150, 150, 200)];
    greenView.backgroundColor = [UIColor greenColor];
    
    UIView *blueView = [[UIView alloc]initWithFrame:CGRectMake(40, 400, 200, 150)];
    blueView.backgroundColor = [UIColor blueColor];
    
    UIView *yellowView = [[UIView alloc]initWithFrame:CGRectMake(100, 600, 180, 150)];
    yellowView.backgroundColor = [UIColor yellowColor];
 
    [self.containerView addSubview:redView];
    [self.containerView addSubview:greenView];
    [self.containerView addSubview:blueView];
    [self.containerView addSubview:yellowView];
    
}

-(void)viewDidAppear:(BOOL)animated {
    
    self.view.bounds = CGRectMake(self.view.bounds.origin.x, self.view.bounds.origin.y + 100, self.view.bounds.size.width, self.view.bounds.size.height);
   
    
    
}




@end
