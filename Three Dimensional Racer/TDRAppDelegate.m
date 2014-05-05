//
//  TDRAppDelegate.m
//  Three Dimensional Racer
//
//  Created by Alsey Coleman Miller on 5/5/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import "TDRAppDelegate.h"
#import "TDRRaceViewController.h"

static void *KVOContext = &KVOContext;

@implementation TDRAppDelegate

-(void)dealloc
{
    [self removeObserver:self
              forKeyPath:@"viewController"];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    
    // KVO view controller
    
    [self addObserver:self
           forKeyPath:@"viewController"
              options:NSKeyValueObservingOptionNew
              context:KVOContext];
    
    // set initial view controller
    
    TDRRaceViewController *raceVC = [[TDRRaceViewController alloc] init];
    
    self.viewController = raceVC;
}

#pragma mark - KVO

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    if (context == KVOContext) {
        
        if ([keyPath isEqualToString:@"viewController"]) {
            
            self.box.contentView = self.viewController.view;
            
        }
        
    } else {
        [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
    }
}

@end
