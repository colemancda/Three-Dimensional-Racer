//
//  TDRAppDelegate.h
//  Three Dimensional Racer
//
//  Created by Alsey Coleman Miller on 5/5/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface TDRAppDelegate : NSObject <NSApplicationDelegate>

#pragma mark - IB Outlets

@property (assign) IBOutlet NSWindow *window;

@property (weak) IBOutlet NSBox *box;

#pragma mark - View Controller

@property (nonatomic) NSViewController *viewController;

@end
