//
//  TDComboFieldListView.m
//  TDAppKit
//
//  Created by Todd Ditchendorf on 4/10/10.
//  Copyright 2010 Todd Ditchendorf. All rights reserved.
//

#import "TDComboFieldListView.h"
#import "NSBezierPath+TDAdditions.h"

#define RADIUS 3.0

@implementation TDComboFieldListView

- (id)init {
    return [self initWithFrame:NSZeroRect];
}


- (id)initWithFrame:(NSRect)frame {
    if (self = [super initWithFrame:frame]) {

    }
    return self;
}


- (void)dealloc {

    [super dealloc];
}


- (void)drawRect:(NSRect)dirtyRect {
    NSRect bounds = [self bounds];

    [[NSColor clearColor] setFill];
    NSRectFill(bounds);
    
    NSBezierPath *path = [NSBezierPath bezierPathWithRoundRect:bounds xRadius:RADIUS yRadius:RADIUS corners:TDCornersAll];
    [[NSColor colorWithDeviceWhite:1.0 alpha:0.8] setFill];
    [path fill];
}

@end
