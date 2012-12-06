//
//  SDConfirmationViewController.m
//  Dec6
//
//  Created by Scott Danzig on 12/5/12.
//  Copyright (c) 2012 Scott Danzig. All rights reserved.
//

#import "SDConfirmationViewController.h"
#import "SDAppDelegate.h"

@interface SDConfirmationViewController ()

@end

@implementation SDConfirmationViewController

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
}

- (void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSString *scene = [model valueForKey:@"scene"];
    NSString *take = [model valueForKey:@"take"];
    NSString *location = [model valueForKey:@"location"];
    NSString *timeOfDay = [model valueForKey:@"time of day"];
    NSString *cameraPos = [model valueForKey:@"camera pos"];
    NSString *shotDesc = [model valueForKey:@"desc"];
    [self.confirmationDisplay setText:[NSString stringWithFormat:
                                       @"Scene = %@\n"
                                       "Take = %@\n"
                                       "Location = %@\n"
                                       "Time of day = %@\n"
                                       "Camera position = %@\n"
                                       "Shot description =\n"
                                       "%@",
                                       scene,
                                       take,
                                       location,
                                       timeOfDay,
                                       cameraPos,
                                       shotDesc]
     ];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setConfirmationDisplay:nil];
    [super viewDidUnload];
}
- (IBAction)buttonClicked:(id)sender {
    NSLog(@"Shot saved!: %@", self.confirmationDisplay.text);
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *logPath = [documentsDirectory stringByAppendingPathComponent:@"shotList.txt"];
    NSFileHandle *myHandle = [NSFileHandle fileHandleForWritingAtPath:logPath];
    [myHandle seekToEndOfFile];
    [myHandle writeData:[self.confirmationDisplay.text dataUsingEncoding:NSUTF8StringEncoding]];}
@end
