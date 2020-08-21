//
//  AppDelegate.m
//  myGame
//
//  Created by Ziyuan Li on 3/19/20.
//  Copyright © 2020 Ziyuan Coco Li. All rights reserved.
//

#import "AppDelegate.h"
#import "GameViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

@synthesize window;
@synthesize viewController;



//- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
//    if(window.rootViewController == nil){
//        UIViewController* vc = [[UIViewController alloc]initWithNibName:nil bundle:nil];
//        window.rootViewController = vc;
//    }
//
//    // Override point for customization after application launch.
//    [window addSubview:viewController.view];
//    [window makeKeyAndVisible];
    
- (void)applicationDidFinishLaunching:(UIApplication *)application {
    CGRect screenBounds = [ [ UIScreen mainScreen ] bounds ];
    
    self.window = [ [ UIWindow alloc ] initWithFrame: screenBounds ];
    viewController = [ [ GameViewController alloc ] init ];
    
    
    if(window.rootViewController == nil){
        UIViewController* vc = [[UIViewController alloc]initWithNibName:nil bundle:nil];
        window.rootViewController = vc;
    }
    
    [ window addSubview: viewController.view ];
    [ window makeKeyAndVisible ];
    //return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
