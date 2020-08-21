//
//  ViewController.h
//  myGame
//
//  Created by Ziyuan Li on 3/19/20.
//  Copyright © 2020 Ziyuan Coco Li. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "GameViewController.h"
@protocol GameViewControllerDelegate;

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic)NSNumber *score;
@property (weak, nonatomic) id<GameViewControllerDelegate>delegate;
@end
