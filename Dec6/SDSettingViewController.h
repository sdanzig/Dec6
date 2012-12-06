//
//  SDSettingViewController.h
//  Dec6
//
//  Created by Scott Danzig on 12/5/12.
//  Copyright (c) 2012 Scott Danzig. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SDSettingViewController : UIViewController {
    NSMutableDictionary *model;
}

- (IBAction)locationEditingComplete:(id)sender;
- (IBAction)timeOfDayEditingComplete:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *locationField;
@property (weak, nonatomic) IBOutlet UITextField *timeOfDayField;
@property (weak, nonatomic) IBOutlet UIStepper *cameraPositionStepper;
- (IBAction)cameraPosChanged:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *cameraPositionDisplay;

@end
