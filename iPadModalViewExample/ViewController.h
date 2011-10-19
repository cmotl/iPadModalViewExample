//
//  ViewController.h
//  iPadModalViewExample
//
//  Created by Christopher Motl on 10/19/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ModalViewController.h"

@interface ViewController : UIViewController <modalDelegate> {
    ModalViewController *theModalViewController;
}

@property (nonatomic, strong) IBOutlet ModalViewController *theModalViewController;

-(IBAction)showModalViewController:(id)sender;

@end
