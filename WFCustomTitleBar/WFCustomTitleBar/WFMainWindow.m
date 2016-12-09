//
//  WFMainWindow.m
//  WFCustomTitleBar
//
//  Created by wang feng on 16/12/9.
//  Copyright © 2016年 Wright. All rights reserved.
//

#import "WFMainWindow.h"
#import "NSView+WFVibrancy.h"

@implementation WFMainWindow

- (instancetype)initWithContentRect:(NSRect)contentRect styleMask:(NSWindowStyleMask)aStyle backing:(NSBackingStoreType)bufferingType defer:(BOOL)flag
{
    self = [super initWithContentRect:contentRect styleMask: NSBorderlessWindowMask | NSResizableWindowMask backing:bufferingType defer:flag];
    if (self) {
        self.movableByWindowBackground = true;
        self.opaque = false;
        self.backgroundColor = [NSColor clearColor];
    }
    
    return self;
}


@end
