//
//  SDBasicInfoViewController.m
//  Dec6
//
//  Created by Scott Danzig on 12/5/12.
//  Copyright (c) 2012 Scott Danzig. All rights reserved.
//

#import "SDBasicInfoViewController.h"
#import "SDAppDelegate.h"
#import <QuartzCore/QuartzCore.h>

@interface SDBasicInfoViewController ()

@end

@implementation SDBasicInfoViewController

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
    [self.sceneDisplay setText:[NSString stringWithFormat:@"%d", (int)self.sceneValue.value]];
    [self.takeDisplay setText:[NSString stringWithFormat:@"%d", (int)self.takeValue.value]];
    [[self.shotDesc layer] setBorderColor:[[UIColor grayColor] CGColor]];
    [[self.shotDesc layer] setBorderWidth:2.3];
    [[self.shotDesc layer] setCornerRadius:15];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sceneChanged:(id)sender {
    NSString *sceneText = [NSString stringWithFormat:@"%d", (int)self.sceneValue.value];
    [self.sceneDisplay setText:sceneText];
    [model setObject:sceneText forKey:@"scene"];
}

- (void)viewDidUnload {
    [self setSceneValue:nil];
    [self setSceneDisplay:nil];
    [self setTakeValue:nil];
    [self setTakeDisplay:nil];
    [self setShotDesc:nil];
    [super viewDidUnload];
}
- (IBAction)takeChanged:(id)sender {
    NSString *takeText = [NSString stringWithFormat:@"%d", (int)self.takeValue.value];
    [self.takeDisplay setText:takeText];
    [model setObject:takeText forKey:@"take"];
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range
 replacementText:(NSString *)text
{
    
    if ([text isEqualToString:@"\n"]) {
        
        [textView resignFirstResponder];
        [model setObject:textView.text forKey:@"desc"];
        return NO;
    }
    return YES;
}
@end
