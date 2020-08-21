//
//  GameViewController.m
//  myGame
//
//  Created by Ziyuan Li on 3/22/20.
//  Copyright © 2020 Ziyuan Coco Li. All rights reserved.
//

#import "GameViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface GameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *winLabel;
@property (weak, nonatomic) IBOutlet UILabel *infoLabel;
@property (weak, nonatomic) IBOutlet UIButton *leftButton;
@property (weak, nonatomic) IBOutlet UIButton *rightButton;
@property (weak, nonatomic) IBOutlet UILabel *score;
@property (weak, nonatomic) IBOutlet UIImageView *ballImage;
@property (weak, nonatomic) IBOutlet UIImageView *paddleView;
@property (weak, nonatomic) IBOutlet UIImageView *red1;
@property (weak, nonatomic) IBOutlet UIImageView *red2;
@property (weak, nonatomic) IBOutlet UIImageView *red3;
@property (weak, nonatomic) IBOutlet UIImageView *red4;
@property (weak, nonatomic) IBOutlet UIImageView *red5;
@property (weak, nonatomic) IBOutlet UIImageView *yellow1;
@property (weak, nonatomic) IBOutlet UIImageView *yellow2;
@property (weak, nonatomic) IBOutlet UIImageView *yellow3;
@property (weak, nonatomic) IBOutlet UIImageView *yellow4;
@property (weak, nonatomic) IBOutlet UIImageView *yellow5;
@property (weak, nonatomic) IBOutlet UIImageView *green1;
@property (weak, nonatomic) IBOutlet UIImageView *green2;
@property (weak, nonatomic) IBOutlet UIImageView *green3;
@property (weak, nonatomic) IBOutlet UIImageView *green4;
@property (weak, nonatomic) IBOutlet UIImageView *green5;
@property (weak, nonatomic) NSMutableArray *brickList;

@property (nonatomic) int myscore;
@property (nonatomic) int speed;
@property (nonatomic) int countbrick;

@end

@implementation GameViewController

@synthesize delegate;

- (void)loadView {
    [ super loadView ];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _myscore = _countscore.intValue;
    _score.text =[NSString stringWithFormat: @"Score: %d", _myscore];
    _countbrick = 0;
    directionImage1 = CGPointMake(-1.0, -1.0);
    _winLabel.hidden = YES;
    _infoLabel.hidden = YES;
//    NSMutableArray *brickList =[[NSMutableArray alloc] init];
//
//    [brickList addObject: _red1];
//    [brickList addObject: _red2];
//    [brickList addObject: _red3];
//    [brickList addObject: _red4];
//    [brickList addObject: _red5];
//    [brickList addObject: _yellow1];
//    [brickList addObject: _yellow2];
//    [brickList addObject: _yellow3];
//    [brickList addObject: _yellow4];
//    [brickList addObject: _yellow5];
//    [brickList addObject: _green1];
//    [brickList addObject: _green2];
//    [brickList addObject: _green3];
//    [brickList addObject: _green4];
//    [brickList addObject: _green5];
//
//  NSLog(@"%@",_brickList);
    _ballImage.center = CGPointMake(_ballImage.frame.size.width/2+arc4random_uniform(self.view.frame.size.width-_ballImage.frame.size.width/2), 380+_ballImage.frame.size.height/2+arc4random_uniform(300-_ballImage.frame.size.height/2));
//    _ballImage.center = CGPointMake(120,380);
    
    
    _paddleView.center = CGPointMake(150,670-_paddleView.frame.size.height/2);
    
    timer = [ NSTimer scheduledTimerWithTimeInterval: 0.009
                                     target: self
                                   selector: @selector(handleTimer:)
                                   userInfo: nil
                                    repeats: YES
    ];
    
}

- (IBAction)goingBack:(id)sender {
//    ViewController *vc = [[ViewController alloc] init];
//
//    vc.score = _countscore;
 
   
    [self.delegate sendDataBack: self.countscore];
    [self dismissViewControllerAnimated:YES completion:nil];
   
    
}

- (IBAction)moveLeft:(UIButton *)sender {
    _rightButton.enabled = YES;
    CGPoint paddlePos = _paddleView.layer.position;
    if(paddlePos.x >= (_paddleView.frame.size.width/2)+1 ){
        
        paddlePos.x -= 10;
        _paddleView.layer.position =  paddlePos;
    }
    else{
        _leftButton.enabled = NO;
    }

}

- (IBAction)moveRight:(UIButton *)sender {
    _leftButton.enabled = YES;
    if((_paddleView.layer.position.x +_paddleView.frame.size.width/2) +1 <=
    self.view.frame.size.width  - 1){
        CGPoint paddlePos = _paddleView.layer.position;
        paddlePos .x += 10;
        _paddleView.layer.position =  paddlePos;
    }
    else{
         _rightButton.enabled = NO;
    }
}



- (void) handleTimer: (NSTimer *) timer {
    CGSize size;
    CGPoint origin;
    
    size = _ballImage.frame.size;
    
    if(_countbrick ==15){
        _winLabel.hidden = NO;
        _infoLabel.hidden = NO;
    }
    
    if(CGRectIntersectsRect(_ballImage.layer.frame, _red1.layer.frame) && _red1.hidden == NO){
        _red1.hidden = YES;
        _myscore += 3;
        _countbrick+=1;
        _countscore = [NSNumber numberWithInt: _myscore];
        _score.text =[NSString stringWithFormat: @"Score: %d", _myscore];
    }
    
    if(CGRectIntersectsRect(_ballImage.layer.frame, _red2.layer.frame)&& _red2.hidden == NO){
        _red2.hidden = YES;
        _myscore += 3;
        _countbrick+=1;
        _countscore = [NSNumber numberWithInt: _myscore];
        _score.text =[NSString stringWithFormat: @"Score: %d", _myscore];
    }
    
    if(CGRectIntersectsRect(_ballImage.layer.frame, _red3.layer.frame)&& _red3.hidden == NO){
        _red3.hidden = YES;
        _myscore += 3;
        _countbrick+=1;
        _countscore = [NSNumber numberWithInt: _myscore];
        _score.text =[NSString stringWithFormat: @"Score: %d", _myscore];
    }
    
    if(CGRectIntersectsRect(_ballImage.layer.frame, _red4.layer.frame)&& _red4.hidden == NO){
        _red4.hidden = YES;
        _myscore += 3;
        _countbrick+=1;
        _countscore = [NSNumber numberWithInt: _myscore];
        _score.text =[NSString stringWithFormat: @"Score: %d", _myscore];
    }
    
    if(CGRectIntersectsRect(_ballImage.layer.frame, _red5.layer.frame)&& _red5.hidden == NO){
        _red5.hidden = YES;
        _myscore += 3;
        _countbrick+=1;
        _countscore = [NSNumber numberWithInt: _myscore];
        _score.text =[NSString stringWithFormat: @"Score: %d", _myscore];
    }
    
    if(CGRectIntersectsRect(_ballImage.layer.frame, _yellow1.layer.frame) &&_yellow1.hidden == NO){
        _yellow1.hidden = YES;
        _myscore += 3;
        _countbrick+=1;
        _countscore = [NSNumber numberWithInt: _myscore];
        _score.text =[NSString stringWithFormat: @"Score: %d", _myscore];
    }
    
    if(CGRectIntersectsRect(_ballImage.layer.frame, _yellow2.layer.frame) && _yellow2.hidden == NO){
        _yellow2.hidden = YES;
        _myscore += 3;
        _countbrick+=1;
        _countscore = [NSNumber numberWithInt: _myscore];
        _score.text =[NSString stringWithFormat: @"Score: %d", _myscore];
    }
    
    if(CGRectIntersectsRect(_ballImage.layer.frame, _yellow3.layer.frame) &&_yellow3.hidden == NO){
        _yellow3.hidden = YES;
        _myscore += 3;
        _countbrick+=1;
        _countscore = [NSNumber numberWithInt: _myscore];
        _score.text =[NSString stringWithFormat: @"Score: %d", _myscore];
    }
    
    if(CGRectIntersectsRect(_ballImage.layer.frame, _yellow4.layer.frame) &&_yellow4.hidden == NO){
        _yellow4.hidden = YES;
        _myscore += 3;
        _countbrick+=1;
        _countscore = [NSNumber numberWithInt: _myscore];
        _score.text =[NSString stringWithFormat: @"Score: %d", _myscore];
    }
    
    if(CGRectIntersectsRect(_ballImage.layer.frame, _yellow5.layer.frame) && _yellow5.hidden == NO){
        _yellow5.hidden = YES;
        _myscore += 3;
        _countbrick+=1;
        _countscore = [NSNumber numberWithInt: _myscore];
        _score.text =[NSString stringWithFormat: @"Score: %d", _myscore];
    }
    
    if(CGRectIntersectsRect(_ballImage.layer.frame, _green1.layer.frame)&& _green1.hidden == NO){
           _green1.hidden = YES;
           _myscore += 3;
           _countbrick+=1;
           _countscore = [NSNumber numberWithInt: _myscore];
           _score.text =[NSString stringWithFormat: @"Score: %d", _myscore];
       }
       
       if(CGRectIntersectsRect(_ballImage.layer.frame, _green2.layer.frame)&& _green2.hidden == NO){
           _green2.hidden = YES;
           _myscore += 3;
           _countbrick+=1;
           _countscore = [NSNumber numberWithInt: _myscore];
           _score.text =[NSString stringWithFormat: @"Score: %d", _myscore];
       }
       
       if(CGRectIntersectsRect(_ballImage.layer.frame, _green3.layer.frame)&& _green3.hidden == NO){
           _green3.hidden = YES;
           _myscore += 3;
           _countbrick+=1;
           _countscore = [NSNumber numberWithInt: _myscore];
           _score.text =[NSString stringWithFormat: @"Score: %d", _myscore];
       }
       
       if(CGRectIntersectsRect(_ballImage.layer.frame, _green4.layer.frame)&& _green4.hidden == NO){
           _green4.hidden = YES;
           _myscore += 3;
           _countbrick+=1;
           _countscore = [NSNumber numberWithInt: _myscore];
           _score.text =[NSString stringWithFormat: @"Score: %d", _myscore];
       }
       
       if(CGRectIntersectsRect(_ballImage.layer.frame, _green5.layer.frame)&& _green5.hidden == NO){
           _green5.hidden = YES;
           _myscore += 3;
           _countbrick+=1;
           _countscore = [NSNumber numberWithInt: _myscore];
           _score.text =[NSString stringWithFormat: @"Score: %d", _myscore];
       }
//
//    for(int i =0; i<15;i++){
//        UIImageView * imageView =[_brickList objectAtIndex:i];
//        if(CGRectIntersectsRect(_ballImage.layer.frame, imageView.layer.frame)){
//
//            imageView.hidden = YES;
//
//               _myscore += 3;
//               _countbrick+=1;
//               _countscore = [NSNumber numberWithInt: _myscore];
//               _score.text =[NSString stringWithFormat: @"Score: %d", _myscore];
//           }
//    }

    if (_ballImage.layer.position.y + (size.height / 2) + 1 >=670){
        //(self.view.frame.size.height - self.view.frame.origin.y) - 1){  // bottom
        origin = _ballImage.layer.position;
        origin.x = _ballImage.frame.size.width/2+arc4random_uniform(self.view.frame.size.width-_ballImage.frame.size.width/2);
        
        origin.y = 120+_ballImage.frame.size.height/2+arc4random_uniform(450-_ballImage.frame.size.height/2);
        
        _ballImage.layer.position = origin;
    }
    else if (_ballImage.layer.position.y + (size.height / 2) + 1 >=669-_paddleView.frame.size.height && CGRectIntersectsRect(_ballImage.layer.frame, _paddleView.layer.frame)){
        directionImage1.y = -1.0;
        
        if (_ballImage.layer.position.x <=
            ( (size.width / 2) + 1) )
            directionImage1.x = 1.0;

        if (_ballImage.layer.position.x + (size.width / 2) + 1 >=
            self.view.frame.size.width  - 1)
            directionImage1.x = -1.0;
        
        //NSLog(@"%d",_myscore);
        _myscore += 1;
        _countscore = [NSNumber numberWithInt: _myscore];
        origin = _ballImage.layer.position;
        origin.x += directionImage1.x;
        origin.y += directionImage1.y;
        _ballImage.layer.position = origin;
        _score.text =[NSString stringWithFormat: @"Score: %d", _myscore];
    }
    else{
        if (_ballImage.layer.position.x <=
            ( (size.width / 2) + 1) )
            directionImage1.x = 1.0;

        if (_ballImage.layer.position.x + (size.width / 2) + 1 >=
            self.view.frame.size.width  - 1)
            directionImage1.x = -1.0;

        if (_ballImage.layer.position.y <=
            ( 120+(size.height / 2) + 1) )
            directionImage1.y = 1.0;
        
       
        
            origin = _ballImage.layer.position;
            origin.x += directionImage1.x;
            origin.y += directionImage1.y;
            _ballImage.layer.position = origin;
        
    }

}


//#pragma mark - Navigation
//
//// In a storyboard-based application, you will often want to do a little preparation before navigation
//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//    // Get the new view controller using [segue destinationViewController].
//    // Pass the selected object to the new view controller.
//    ViewController *vc = [segue destinationViewController];
//
//    vc.score = _countscore;
//    NSLog(@"%d", vc.score.intValue);
//}


@end
