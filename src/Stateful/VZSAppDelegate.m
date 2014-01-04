//
//  VZSAppDelegate.m
//  Stateful
//
//  Created by Ben Burnett on 1/4/2014.
//  Copyright (c) 2014 Ben Burnett. All rights reserved.
//

#import "VZSAppDelegate.h"

@implementation VZSAppDelegate

@synthesize statusMenu = _statusMenu;
@synthesize statusItem = _statusItem;

- (void)awakeFromNib
{
    self.statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
    self.statusItem.menu = self.statusMenu;
    self.statusItem.title = @"Stateful";
    self.statusItem.highlightMode = YES;
    
    NSLog(@"Status bar in place.");
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    //[NSTimer scheduledTimerWithTimeInterval:REFRESH_TIME_SECONDS target:self selector:@selector(refreshBalance) userInfo:nil repeats:YES];
}

- (IBAction)refresh:(id)sender {
    //[self refreshBalance];
}

/* Do as we're asked: bail */
- (IBAction)quit:(id)sender {
    [NSApp performSelector:@selector(terminate:) withObject:nil afterDelay:0.0];
    
    NSLog(@"Bye!");
}

@end
