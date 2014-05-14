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

}




@end
