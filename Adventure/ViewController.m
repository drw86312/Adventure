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
@property (strong, nonatomic) IBOutlet UITextView *initialSceneTextView;
@property (weak, nonatomic) IBOutlet UILabel *fateTextView;


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

// These two methods are triggered by the user choosing either Tom or Ryan and they set the TextViews to reflect who has been chosen.

- (IBAction)tomButton:(UIButton *)sender
{
    _name = [NSString stringWithFormat:sender.titleLabel.text];
    self.initialSceneTextView.text = [NSString stringWithFormat: @"%@ wakes up in the Mobile Maker space surrounded by empty pizza boxes", _name];
    self.fateTextView.text = [NSString stringWithFormat: @"%@'s prior fate", _name];


}

- (IBAction)ryanButton:(UIButton *)sender
{
    _name = [NSString stringWithFormat:sender.titleLabel.text];
    self.initialSceneTextView.text = [NSString stringWithFormat: @"%@ wakes up in the Mobile Maker space surrounded by empty pizza boxes", _name];
    self.fateTextView.text = [NSString stringWithFormat: @"%@'s prior fate", _name];

}

@end
