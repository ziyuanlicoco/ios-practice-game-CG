//
//  drawView2.m
//  myGame
//
//  Created by Ziyuan Li on 3/23/20.
//  Copyright © 2020 Ziyuan Coco Li. All rights reserved.
//

#import "drawView2.h"

@implementation drawView2


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextMoveToPoint(ctx, 0, 120);
    CGContextAddLineToPoint(ctx, self.frame.size.width, 120);
    CGContextAddLineToPoint(ctx, self.frame.size.width, 670);
    CGContextAddLineToPoint(ctx, 0, 670);
    CGContextClosePath(ctx);
    CGContextSetStrokeColorWithColor(ctx, [UIColor blueColor].CGColor);
    CGContextStrokePath(ctx);
    
    
}

@end
