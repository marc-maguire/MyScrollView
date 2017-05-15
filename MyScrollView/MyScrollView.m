//
//  MyScrollView.m
//  MyScrollView
//
//  Created by Marc Maguire on 2017-05-15.
//  Copyright © 2017 Marc Maguire. All rights reserved.
//

#import "MyScrollView.h"

@interface MyScrollView()

@property (nonatomic) CGSize contentSize;
@property (nonatomic) UIPanGestureRecognizer *panGesture;

@end

@implementation MyScrollView

-(instancetype)init{
    
    if (self = [super init]) {
        _contentSize = self.frame.size;
        _panGesture = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(panGestureDetected:)];
    }
    
    return self;
}

- (IBAction)panGestureDetected:(UIPanGestureRecognizer *)sender {
    
    CGPoint translation = [sender translationInView:self];
    CGPoint newLocation = self.frame.origin;
    newLocation.x += translation.x;
    newLocation.y += translation.y;
    self.frame = CGRectMake(self.frame.origin.x + translation.x, self.frame.origin.y + translation.y, self.frame.size.width, self.frame.size.height);
    
}

@end
