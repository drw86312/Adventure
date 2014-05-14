//
//  StoryViewController.m
//  Adventure
//
//  Created by David Warner on 5/13/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

#import "StoryViewController.h"

@interface StoryViewController ()
@property (weak, nonatomic) IBOutlet UILabel *finalLabel;
@property (weak, nonatomic) IBOutlet UITextView *lotteryLabel;


@end

@implementation StoryViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UIButton *)sender
{
    UIViewController *nextViewController = segue.destinationViewController;

    [nextViewController.navigationItem setTitle:sender.currentTitle];

//    self.lotteryLabel.text = [NSString stringWithFormat:@"As %@ walks to the dumpster with the empty pizza boxes, he stumbles upon a crumpled lottery ticket and picks it up. Hoping it's his lucky day, he heads to the local lottery office, but he must choose a route.", ];

}







@end
