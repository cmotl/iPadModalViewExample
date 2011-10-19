//
//  ModalViewController.h
//  iPadModalViewExample
//
//  Created by Christopher Motl on 10/19/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol modalDelegate <NSObject>

- (void)dismissModalViewController:(UIViewController *)viewController;

@end

@interface ModalViewController : UIViewController{
    id<modalDelegate> delegate;
}

@property (nonatomic, strong) id<modalDelegate> delegate;

-(IBAction)dismiss:(id)sender;

@end
