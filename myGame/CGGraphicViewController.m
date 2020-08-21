//
//  CGGraphicViewController.m
//  myGame
//
//  Created by Ziyuan Li on 3/21/20.
//  Copyright © 2020 Ziyuan Coco Li. All rights reserved.
//

#import "CGGraphicViewController.h"

@interface CGGraphicViewController ()

@end

@implementation CGGraphicViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIView *myGradient = [[UIView alloc] initWithFrame:CGRectMake(40, 530, 330, 250)];
    
    CAGradientLayer *gradient = [CAGradientLayer layer];
    gradient.frame = myGradient.bounds;
    gradient.startPoint = CGPointZero;
    gradient.endPoint = CGPointMake(1, 0);
    gradient.colors = @[(id)[UIColor whiteColor].CGColor,(id)[UIColor blackColor].CGColor];
    [myGradient.layer addSublayer:gradient];
                          
    [self.view addSubview:myGradient];
    
    //gradient
//    CGColorRef startColor = [UIColor greenColor].CGColor;
//    CGColorRef endColor = [UIColor yellowColor].CGColor;
//    NSMutableArray *colors = [NSMutableArray array];
//    [colors addObject:(__bridge id)startColor];
//    [colors addObject:(__bridge id)endColor];
//    
//    CGFloat locations[] = {0.0, 1.0};
//   
//    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
//    CGGradientRef mygradient =
//    CGGradientCreateWithColors(colorSpace, (CFArrayRef)colors, locations);
//    
//    CGContextRef ctx = UIGraphicsGetCurrentContext();
//    CGRect rect = CGRectMake(0,1,330,250);
//    CGPoint startPoint = CGPointMake(CGRectGetMidX(rect), CGRectGetMinY(rect));
//    CGPoint endPoint = CGPointMake(CGRectGetMidX(rect), CGRectGetMaxY(rect));
//    CGContextDrawLinearGradient(ctx, mygradient, startPoint, endPoint, 0);

    
}
- (IBAction)back:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
