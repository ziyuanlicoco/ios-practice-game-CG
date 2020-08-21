//
//  IntroductionViewController.m
//  myGame
//
//  Created by Ziyuan Li on 3/21/20.
//  Copyright © 2020 Ziyuan Coco Li. All rights reserved.
//

#import "IntroductionViewController.h"

@interface IntroductionViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *photoView;
@property (weak, nonatomic) IBOutlet UILabel *introText;
@property (weak, nonatomic) IBOutlet UILabel *GraphicText;
@property (weak, nonatomic) IBOutlet UILabel *gameText;


@end

@implementation IntroductionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _photoView.image = [UIImage imageNamed:@"photo.jpg"];
    _introText.text = @"I am a senior (not graduating) major in Computer Science. I tried Finance and Math before.";
    _GraphicText.text = @"A snowman on a box, which is painted with gradient color (using Core Graphic)";
    _gameText.text = @"A Breakout game! Use button to move the paddle and catch the ball and get 1 point! If your ball hit a brick, you get 3 extra points~~ If you hit all bricks? YOU WIN!";
}


- (IBAction)backButtonTapped:(id)sender {
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
