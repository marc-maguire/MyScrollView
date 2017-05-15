//
//  MyScrollView.m
//  MyScrollView
//
//  Created by Marc Maguire on 2017-05-15.
//  Copyright © 2017 Marc Maguire. All rights reserved.
//

#import "MyScrollView.h"

@interface MyScrollView()

@property (nonatomic) UIPanGestureRecognizer *panGesture;

@end

@implementation MyScrollView

-(instancetype)init{
    
    if (self = [super init]) {
//        _contentSizeProperty = self.frame.size.height;
        _panGesture = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(panGestureDetected:)];
        [self addGestureRecognizer:self.panGesture];
    }
    
    return self;
}

- (IBAction)panGestureDetected:(UIPanGestureRecognizer *)sender {
    
    CGPoint translation = [sender translationInView:self];
//    CGPoint newLocation = self.frame.origin;
    CGFloat newY = self.bounds.origin.y - translation.y;
    if (newY <= 0) {
        newY = self.frame.origin.y;
    } else if (newY + self.bounds.size.height > self.contentSizeProperty) {
        newY = self.contentSizeProperty - self.bounds.size.height;
    }
    
    
//    CGPoint newOrigin = CGPointMake(self.bounds.origin.x, newY);
//    newLocation.y += translation.y;
//    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y + translation.y, self.frame.size.width, self.frame.size.height);
    self.bounds = CGRectMake(self.bounds.origin.x, newY, self.bounds.size.width, self.bounds.size.height);
//    newOrigin;
    [sender setTranslation:CGPointZero inView:self];
}



@end
