//
//  ViewController.m
//  iPadModalViewExample
//
//  Created by Christopher Motl on 10/19/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize theModalViewController;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}

-(IBAction)showModalViewController:(id)sender {
    
    theModalViewController.modalPresentationStyle = UIModalPresentationFormSheet;
    theModalViewController.delegate = self;
    [self presentModalViewController:theModalViewController animated:YES];
    
    theModalViewController.view.superview.frame = CGRectMake(0, 0, 630, 340);
    theModalViewController.view.superview.center = CGPointMake(self.view.bounds.size.width/2,self.view.bounds.size.height/2);
}

- (void)dismissModalViewController:(UIViewController *)viewController {
    [self dismissModalViewControllerAnimated:YES];
}

@end
