//
//  AppDelegate.h
//  myGame
//
//  Created by Ziyuan Li on 3/19/20.
//  Copyright © 2020 Ziyuan Coco Li. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GameViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>{
    UIWindow *window;
    GameViewController *viewController;

}

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, retain) IBOutlet GameViewController *viewController;



@end

