//
//  ViewController.m
//  TicTacToe
//
//  Created by Amar Bhatia on 10/1/15.
//  Copyright © 2015 A2B. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *labelOne;
@property (weak, nonatomic) IBOutlet UILabel *labelTwo;
@property (weak, nonatomic) IBOutlet UILabel *labelThree;
@property (weak, nonatomic) IBOutlet UILabel *labelFour;
@property (weak, nonatomic) IBOutlet UILabel *labelFive;
@property (weak, nonatomic) IBOutlet UILabel *labelSix;
@property (weak, nonatomic) IBOutlet UILabel *labelSeven;
@property (weak, nonatomic) IBOutlet UILabel *labelEight;
@property (weak, nonatomic) IBOutlet UILabel *labelNine;
@property (weak, nonatomic) IBOutlet UILabel *whichPlayerLabel;
@property UILabel *player;
@property (weak, nonatomic) IBOutlet UIButton *helpButton;

@property CGPoint point;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.point = self.whichPlayerLabel.center;
    return;
}

-(IBAction)onLabelTapped:(UITapGestureRecognizer *)tapGestureRecognizer
{
    CGPoint pointGesture = [tapGestureRecognizer locationInView:self.view];
    [self findLabelUsingPoint:pointGesture];

    if (tapGestureRecognizer.state == UIGestureRecognizerStateEnded) {
        [UIView animateWithDuration:1.0 animations:^{
            self.whichPlayerLabel.center =pointGesture;
        }];
    }
    else {

    }
}

// Returns Label when touched
-(UILabel *)findLabelUsingPoint:(CGPoint)point {
    if (CGRectContainsPoint(self.labelOne.frame, point)) {
        return self.labelOne;
    }
    if (CGRectContainsPoint(self.labelTwo.frame, point)) {
        return self.labelTwo;
    }
    if (CGRectContainsPoint(self.labelThree.frame, point)) {
        return self.labelThree;
    }
    if (CGRectContainsPoint(self.labelFour.frame, point)) {
        return self.labelFour;
    }
    if (CGRectContainsPoint(self.labelFive.frame, point)) {
        return self.labelFive;
    }
    if (CGRectContainsPoint(self.labelSix.frame, point)) {
        return self.labelSix;
    }
    if (CGRectContainsPoint(self.labelSeven.frame, point)) {
        return self.labelSeven;
    }
    if (CGRectContainsPoint(self.labelEight.frame, point)) {
        return self.labelEight;
    }
    if (CGRectContainsPoint(self.labelNine.frame, point)) {
        return self.labelNine;
    }
    else {
        return nil;
    }
}

- (IBAction)onHelpButtonPressed:(id)sender {
}

// Determines Player Selection



@end
