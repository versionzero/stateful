//
//  VZSAppDelegate.h
//  Stateful
//
//  Created by Ben Burnett on 1/4/2014.
//  Copyright (c) 2014 Ben Burnett. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface VZSAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSMenu *statusMenu;
@property (strong, nonatomic) NSStatusItem *statusItem;

@end
