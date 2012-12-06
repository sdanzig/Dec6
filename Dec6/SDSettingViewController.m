//
//  SDSettingViewController.m
//  Dec6
//
//  Created by Scott Danzig on 12/5/12.
//  Copyright (c) 2012 Scott Danzig. All rights reserved.
//

#import "SDSettingViewController.h"
#import "SDAppDelegate.h"

@interface SDSettingViewController ()

@end

@implementation SDSettingViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    model = ((SDAppDelegate *)[[UIApplication sharedApplication] delegate]).model;
    [self.cameraPositionDisplay setText:[NSString stringWithFormat:@"%d", (int)self.cameraPositionStepper.value]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setLocationField:nil];
    [self setLocationField:nil];
    [self setTimeOfDayField:nil];
    [self setCameraPositionStepper:nil];
    [self setCameraPositionDisplay:nil];
    [super viewDidUnload];
}

- (IBAction)locationEditingComplete:(id)sender {
    [sender resignFirstResponder];
    [model setObject:self.locationField.text forKey:@"location"];
}

- (IBAction)timeOfDayEditingComplete:(id)sender {
    [sender resignFirstResponder];
    [model setObject:self.timeOfDayField.text forKey:@"time of day"];
}

- (IBAction)cameraPosChanged:(id)sender {
    NSString *cameraPosText = [NSString stringWithFormat:@"%d", (int)self.cameraPositionStepper.value];
    [self.cameraPositionDisplay setText:cameraPosText];
    [model setObject:cameraPosText forKey:@"camera pos"];
}
@end
