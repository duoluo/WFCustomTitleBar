//
//  WFMainView.m
//  WFCustomTitleBar
//
//  Created by wang feng on 16/12/9.
//  Copyright © 2016年 Wright. All rights reserved.
//

#import "WFMainView.h"

static CGFloat const titleHeight = 22;

@implementation WFMainView

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        
        [self setWantsLayer:YES];
        
        CGRect titleRect = self.frame;
        titleRect.size.height = titleHeight;
        titleRect.origin.y = self.frame.size.height - titleRect.size.height;
        self.titleBarView = [[WFTitleBarView alloc] initWithFrame:titleRect];
        
        [self addSubview:self.titleBarView positioned:NSWindowAbove relativeTo:nil];
        self.autoresizesSubviews = YES;
    }
    
    return self;
}

- (void)drawRect:(NSRect)dirtyRect {
    
    [super drawRect:dirtyRect];
    
    CGRect titleRect = self.frame;
    titleRect.size.height = self.titlebarHeight;
    titleRect.origin.y = self.frame.size.height - titleRect.size.height;
    self.titleBarView.frame = titleRect;
}

@end
