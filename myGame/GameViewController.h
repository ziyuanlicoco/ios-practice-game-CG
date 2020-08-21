//
//  GameViewController.h
//  myGame
//
//  Created by Ziyuan Li on 3/22/20.
//  Copyright © 2020 Ziyuan Coco Li. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

NS_ASSUME_NONNULL_BEGIN


@protocol GameViewControllerDelegate <NSObject>

-(void)sendDataBack:(NSNumber *)countscore;
@end

@interface GameViewController : UIViewController{
    
    CGPoint directionImage1;
    NSTimer *timer;
}
@property (strong, nonatomic) NSNumber *countscore;
@property (weak, nonatomic) id<GameViewControllerDelegate>delegate;

- (void) handleTimer: (NSTimer *) timer;

@end


NS_ASSUME_NONNULL_END
