//
//  RootViewController.h
//  EvernoteKeyboardButton
//
//  Created by Gavin Miller on 11-07-17.
//  Copyright 2011 Quadrus. All rights reserved.
//

#import <UIKit/UIKit.h>

#define TOGGLE(bool) bool = !bool

@interface RootViewController : UIViewController {
    UITextView *_textView;
    
    UIButton *_showHideButton;
    UIImageView *_keyboard;
    UIImageView *_arrow;
    UIImage *_background;
    BOOL _isFlipped;
}

@property (nonatomic, retain) IBOutlet UITextView *textView;

@property (nonatomic, retain) IBOutlet UIButton *showHideButton;
@property (nonatomic, retain) UIImageView *keyboard;
@property (nonatomic, retain) UIImageView *arrow;
@property (nonatomic, retain) UIImage *background;
@property (nonatomic, assign) BOOL isFlipped;

-(IBAction)showHideTouched;

@end
