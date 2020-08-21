//
//  IntroductionViewController.h
//  myGame
//
//  Created by Ziyuan Li on 3/21/20.
//  Copyright © 2020 Ziyuan Coco Li. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol IntroductionViewControllerDelegate;

NS_ASSUME_NONNULL_BEGIN

@interface IntroductionViewController : UIViewController

@property (weak, nonatomic) id<IntroductionViewControllerDelegate>delegate;

@end


@protocol IntroductionViewControllerDelegate <NSObject>


@end
NS_ASSUME_NONNULL_END
