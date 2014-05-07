//
//  TDRRaceViewController.m
//  Three Dimensional Racer
//
//  Created by Alsey Coleman Miller on 5/5/14.
//  Copyright (c) 2014 ColemanCDA. All rights reserved.
//

#import "TDRRaceViewController.h"

@interface TDRRaceViewController ()

@end

@implementation TDRRaceViewController

- (id)init
{
    self = [self initWithNibName:NSStringFromClass([self class]) bundle:nil];
    if (self) {
        
    }
    return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Initialization code here.
    }
    return self;
}

-(void)awakeFromNib
{
    [super awakeFromNib];
    
    // load car scene
    
    SCNScene *carScene = [SCNScene sceneNamed:@"legoCar1"];
    
    [self.sceneView.scene.rootNode addChildNode:carScene.rootNode.childNodes.firstObject];
    
    // light
    
    SCNLight *light = [SCNLight light];
    
    light.type = SCNLightTypeDirectional;
    
    SCNNode *lightNode = [SCNNode node];
    
    lightNode.position = SCNVector3Make(0, 0, 30);
    
    [self.sceneView.scene.rootNode addChildNode:lightNode];
    
    // floor
    
    SCNFloor *floor = [SCNFloor floor];
    
    floor.firstMaterial.diffuse.contents = [NSColor brownColor];
    
    SCNNode *floorNode = [SCNNode node];
    
    floorNode.geometry = floor;
    
    [self.sceneView.scene.rootNode addChildNode:floorNode];
    
}

#pragma mark - 

@end
