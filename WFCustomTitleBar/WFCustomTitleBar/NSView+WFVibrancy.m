//
//  NSView+WFVibrancy.m
//  WFCustomTitleBar
//
//  Created by wang feng on 16/12/9.
//  Copyright © 2016年 Wright. All rights reserved.
//

#import "NSView+WFVibrancy.h"

@implementation NSView (WFVibrancy)

- (instancetype)insertVibrancyViewBlendingMode:(NSVisualEffectBlendingMode)mode
{
    Class vibrantClass=NSClassFromString(@"NSVisualEffectView");
    if (vibrantClass)
    {
        NSVisualEffectView *vibrant=[[vibrantClass alloc] initWithFrame:self.bounds];
        [vibrant setAutoresizingMask:NSViewWidthSizable|NSViewHeightSizable];
        [vibrant setBlendingMode:mode];
        vibrant.material = NSVisualEffectMaterialUltraDark;
        vibrant.state = NSVisualEffectStateActive;
        [self addSubview:vibrant positioned:NSWindowBelow relativeTo:nil];
        
        return vibrant;
    }
    return nil;
}
@end
