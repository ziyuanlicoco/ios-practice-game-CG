//
//  ViewController.m
//  myGame
//
//  Created by Ziyuan Li on 3/19/20.
//  Copyright © 2020 Ziyuan Coco Li. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (copy, nonatomic) NSArray *viewCell;

@end

@implementation ViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
    self.viewCell=@[@"Introduction", @"CG Graphic", @"Breakout Game"];
    _score = [[NSNumber alloc]initWithInt:0];
    
    UITableView *tableView = (id)[self.view viewWithTag:1];
              UIEdgeInsets contentInset = tableView.contentInset;
              contentInset.top = 20;
              [tableView setContentInset:contentInset];
    
    [self passData];
//    GameViewController *gameVC = [[GameViewController alloc] init];
//    //GameViewController *vc = [[GameViewController alloc]init];
//    gameVC.delegate = self;
//    [self.navigationController pushViewController:gameVC animated:YES];
//    //NSLog(@"%d", self.score.intValue);
   
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.viewCell count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView
          cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *SimpleTableIdentifier = @"SimpleTableIdentifier";
    
     UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:
                              
                              SimpleTableIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]
                         initWithStyle:UITableViewCellStyleDefault
                         reuseIdentifier:SimpleTableIdentifier];
         }
    
    cell.textLabel.text = self.viewCell[indexPath.row];
    
    cell.textLabel.textColor = [UIColor blueColor];
    
    return cell;
}

-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
    
    return 80;
}

- (void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *rowValue = self.viewCell[indexPath.row];
    
    if([rowValue isEqualToString:@"Introduction"]){
        [self performSegueWithIdentifier:@"IntroSegue" sender:self];
    }
    else if([rowValue isEqualToString:@"CG Graphic"]){
        [self performSegueWithIdentifier:@"CGSegue" sender:self];
    }
    else if([rowValue isEqualToString:@"Breakout Game"]){
        [self performSegueWithIdentifier:@"GameSegue" sender:self];
    }
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

-(void)sendDataBack:(NSNumber *)countscore{
    GameViewController *gameVC = [[GameViewController alloc] init];
    [gameVC dismissViewControllerAnimated:YES completion:nil];
    self.score = countscore;
    
}
-(void) passData{
    GameViewController *gameVC = [[GameViewController alloc] init];
    //GameViewController *vc = [[GameViewController alloc]init];
    
    [self.navigationController pushViewController:gameVC animated:YES];
    //NSLog(@"%d", self.score.intValue);
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    //NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    // Pass the selected object to the new view controller.
   
        // Get reference to the destination view controller
    
    if ([segue.identifier isEqualToString: @"GameSegue"]){
    GameViewController *gameVC = [segue destinationViewController];
    gameVC.countscore = _score;
    gameVC.delegate = self;
    }
    //selse if
    
}

@end
