//
//  RootViewController.m
//  EvernoteKeyboardButton
//
//  Created by Gavin Miller on 11-07-17.
//  Copyright 2011 Quadrus. All rights reserved.
//

#import "RootViewController.h"

@implementation RootViewController

@synthesize textView = _textView;
@synthesize showHideButton = _showHideButton;
@synthesize keyboard = _keyboard;
@synthesize arrow = _arrow;
@synthesize background = _background;
@synthesize isFlipped = _isFlipped;

- (void)viewDidLoad {    
    self.background = [[UIImage imageNamed:@"edit-button-bg.png"] stretchableImageWithLeftCapWidth:4 topCapHeight:0];
    [self.showHideButton setBackgroundImage:self.background forState:UIControlStateNormal];
    [self.showHideButton setBackgroundImage:self.background forState:UIControlStateHighlighted];

    self.keyboard = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"edit-button-icon-keyboard.png"]];
    self.keyboard.frame = CGRectMake(5, 5, 22, 14);
    [self.showHideButton addSubview:self.keyboard];
    
    self.arrow = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"edit-button-icon-up.png"]];
    self.arrow.frame = CGRectMake(31, 5, 10, 14);
    [self.showHideButton addSubview:self.arrow];
    
    [super viewDidLoad];
}

-(IBAction)showHideTouched {
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.35];
    
    if (self.isFlipped) {
        [self.textView resignFirstResponder];
        self.keyboard.transform = CGAffineTransformMakeRotation(0);
        self.showHideButton.transform = CGAffineTransformMakeRotation(0);
    } else {
        [self.textView becomeFirstResponder];
        self.keyboard.transform = CGAffineTransformMakeRotation(M_PI);
        self.showHideButton.transform = CGAffineTransformMakeRotation(M_PI);
    }
    TOGGLE(self.isFlipped);
    
    [UIView commitAnimations];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)viewDidUnload {
    [super viewDidUnload];
}

- (void)dealloc {   
    self.textView = nil;
    self.showHideButton = nil;
    self.keyboard = nil;
    self.arrow = nil;
    self.background = nil;
    
    [super dealloc];
}

@end
