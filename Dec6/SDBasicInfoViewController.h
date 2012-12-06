//
//  SDBasicInfoViewController.h
//  Dec6
//
//  Created by Scott Danzig on 12/5/12.
//  Copyright (c) 2012 Scott Danzig. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SDBasicInfoViewController : UIViewController {
    NSMutableDictionary *model;
}
- (IBAction)sceneChanged:(id)sender;
@property (weak, nonatomic) IBOutlet UIStepper *sceneValue;
@property (weak, nonatomic) IBOutlet UITextField *sceneDisplay;
- (IBAction)takeChanged:(id)sender;
@property (weak, nonatomic) IBOutlet UIStepper *takeValue;
@property (weak, nonatomic) IBOutlet UITextField *takeDisplay;
@property (weak, nonatomic) IBOutlet UITextView *shotDesc;

@end
