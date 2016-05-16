//
//  MyScrollView.m
//  MyScrollView
//
//  Created by Zach Smoroden on 2016-05-16.
//  Copyright © 2016 Zach Smoroden. All rights reserved.
//

#import "MyScrollView.h"

@interface MyScrollView ()

@property (nonatomic) UIPanGestureRecognizer *pan;

@property (nonatomic) CGRect originalBounds;

//@property (nonatomic)

@end

@implementation MyScrollView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(void)awakeFromNib {
    self.userInteractionEnabled = YES;
    self.pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panned:)];
    
    [self addGestureRecognizer:self.pan];

}

- (IBAction)panned:(UIPanGestureRecognizer *)sender {
    CGPoint newPoint;
    CGFloat newX;
    CGFloat newY;
    switch (sender.state) {
        case UIGestureRecognizerStateBegan:
            self.originalBounds = self.bounds;
            break;
        case UIGestureRecognizerStateChanged:
            newPoint = [sender translationInView:self.superview];
            
            // x values
            if (self.originalBounds.origin.x - newPoint.x + self.originalBounds.size.width > self.contentSize.width || self.originalBounds.origin.x - newPoint.x < 0) {
                newX = self.bounds.origin.x;
            } else {
                newX = self.originalBounds.origin.x - newPoint.x;
            }
            
            // y values
            if (self.originalBounds.origin.y - newPoint.y + self.originalBounds.size.height > self.contentSize.height || self.originalBounds.origin.y - newPoint.y < 0) {
                newY = self.bounds.origin.y;
            } else {
                newY = self.originalBounds.origin.y - newPoint.y;
            }
            
            self.bounds = (CGRect){newX, newY, self.bounds.size.width, self.bounds.size.height};

            break;
        default:
            break;
    }
}

@end
