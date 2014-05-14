//
//  ViewController.m
//  Adventure
//
//  Created by David Warner on 5/13/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

#import "ViewController.h"
#import "StoryViewController.h"


@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *finalLabel;



@end

@implementation ViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UIButton *)sender
{
    UIViewController *nextViewController = segue.destinationViewController;

    [nextViewController.navigationItem setTitle:sender.currentTitle];

}

- (IBAction)unwindFromStoryViewController:(UIStoryboardSegue *)segue
{
    self.finalLabel.text = [[segue.sourceViewController endingText] text];
    
}

- (IBAction)unwindFromStoryViewController2:(UIStoryboardSegue *)segue
{
    self.finalLabel.text = [[segue.sourceViewController endingText2] text];

}

- (IBAction)unwindFromStoryViewController3:(UIStoryboardSegue *)segue
{
    self.finalLabel.text = [[segue.sourceViewController endingText3] text];

}

- (IBAction)unwindFromStoryViewController4:(UIStoryboardSegue *)segue
{
    self.finalLabel.text = [[segue.sourceViewController endingText4] text];

}










@end
