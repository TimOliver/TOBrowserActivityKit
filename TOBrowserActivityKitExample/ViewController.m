//
//  ViewController.m
//  TOBrowserActivityKit
//
//  Created by Tim Oliver on 15/08/2014.
//  Copyright (c) 2014 Tim Oliver. All rights reserved.
//

#import "ViewController.h"

#import "TOActivitySafari.h"
#import "TOActivityChrome.h"

@interface ViewController () <UIPopoverControllerDelegate>

@property (nonatomic, strong) UIPopoverController *sharePopoverController;

@end

@implementation ViewController
            
- (IBAction)shareButtonTapped:(id)sender
{
    UIButton *button = (UIButton *)sender;
    
    NSURL *url = [NSURL URLWithString:@"http://www.timoliver.com.au"];
    NSArray *applicationActivities = @[[TOActivityChrome new], [TOActivitySafari new]];
    UIActivityViewController *activityController = [[UIActivityViewController alloc] initWithActivityItems:@[url]
                                                                                     applicationActivities:applicationActivities];
    
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        self.sharePopoverController = [[UIPopoverController alloc] initWithContentViewController:activityController];
        self.sharePopoverController.delegate = self;
        [self.sharePopoverController presentPopoverFromRect:button.frame inView:button.superview permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
    }
    else {
        [self presentViewController:activityController animated:YES completion:nil];
    }
}

- (void)popoverControllerDidDismissPopover:(UIPopoverController *)popoverController
{
    self.sharePopoverController = nil;
}

@end
