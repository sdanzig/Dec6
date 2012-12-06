//
//  SDConfirmationViewController.h
//  Dec6
//
//  Created by Scott Danzig on 12/5/12.
//  Copyright (c) 2012 Scott Danzig. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SDConfirmationViewController : UIViewController {
    NSMutableDictionary *model;
}

@property (weak, nonatomic) IBOutlet UITextView *confirmationDisplay;
- (IBAction)buttonClicked:(id)sender;

@end
