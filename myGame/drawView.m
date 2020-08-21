//
//  drawView.m
//  myGame
//
//  Created by Ziyuan Li on 3/21/20.
//  Copyright © 2020 Ziyuan Coco Li. All rights reserved.
//

#import "drawView.h"

@implementation drawView

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.

- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextBeginPath(ctx);
    
    CGContextAddArc(ctx, 200, 370, 55, 0, 2*M_PI, 1 );
    CGContextStrokePath(ctx);
    UIGraphicsEndImageContext();

    
    //CGContextMoveToPoint(ctx, 200, 450);
    CGContextRef ctx2 = UIGraphicsGetCurrentContext();
    CGContextAddArc(ctx2, 200, 450, 80, 1.72*M_PI, 1.28*M_PI, 0 );
    CGContextStrokePath(ctx2);
    
    CGContextRef ctx3 = UIGraphicsGetCurrentContext();
    CGContextMoveToPoint(ctx3, 180, 372);
    CGContextAddLineToPoint(ctx3, 120, 375);
    CGContextAddLineToPoint(ctx3, 180, 378);
    CGContextAddLineToPoint(ctx3, 180, 372);
    CGContextStrokePath(ctx3);
    
    CGContextRef ctx4 = UIGraphicsGetCurrentContext();
    CGContextFillEllipseInRect(ctx4, CGRectMake(170, 343, 13, 13));
    CGContextFillEllipseInRect(ctx4, CGRectMake(200, 343, 13, 13));
    
    
    CGContextFillEllipseInRect(ctx4, CGRectMake(175, 435, 12, 12));
    CGContextFillEllipseInRect(ctx4, CGRectMake(170, 455, 14, 14));
    CGContextFillEllipseInRect(ctx4, CGRectMake(180, 485, 12, 12));
    
    CGContextMoveToPoint(ctx4, 240, 460);
    CGContextAddLineToPoint(ctx4, 290, 410);
    
    CGContextMoveToPoint(ctx4, 280, 420);
    CGContextAddLineToPoint(ctx4, 282, 402);
    
    CGContextMoveToPoint(ctx4, 280, 420);
    CGContextAddLineToPoint(ctx4, 293, 422);
    
    CGContextStrokePath(ctx4);
    
    
    CGContextRef ctx5 = UIGraphicsGetCurrentContext();
    CGContextAddArc(ctx5, 192, 362, 30, 0.35*M_PI, 0.65*M_PI, 0 );
    CGContextStrokePath(ctx5);
    
    CGContextRef ctx6 = UIGraphicsGetCurrentContext();
    CGContextAddRect(ctx6, CGRectMake(40, 530, 330, 250));
    CGContextStrokePath(ctx6);
    
    
    
       
    
    //UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0,0,320,35)];
    
   

    //UIGraphicsEndImageContext();

    
    
    
    //
    //CGContextFillEllipseInRect(ctx2, CGRectMake(100, 130, 200, 100));
    //UIGraphicsEndImageContext();
}


@end
