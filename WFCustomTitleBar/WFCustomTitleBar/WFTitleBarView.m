//
//  WFTitleBarView.m
//  WFCustomTitleBar
//
//  Created by wang feng on 16/12/9.
//  Copyright © 2016年 Wright. All rights reserved.
//

#import "WFTitleBarView.h"

@implementation WFTitleBarView

- (instancetype)initWithFrame:(NSRect)frameRect
{
    self = [super initWithFrame:frameRect];
    if (self) {

        self.closeButton = [[WFTitleBarButton alloc] initWithType:TitleBarButtonTypeClose];
        self.closeButton.delegate = self;
        [self addSubview:self.closeButton];
        
        self.minButton = [[WFTitleBarButton alloc] initWithType:TitleBarButtonTypeMinimize];
        self.minButton.delegate = self;
        [self addSubview:self.minButton];
        
        self.zoomButton = [[WFTitleBarButton alloc] initWithType:TitleBarButtonTypeZoom];
        self.zoomButton.delegate = self;
        [self addSubview:self.zoomButton];
        
        [self updateButtonPosition];
    }
    
    return self;
}

- (void)updateButtonPosition
{
    CGFloat indent = (self.frame.size.height - self.closeButton.frame.size.height) / 2;
    CGRect btnFrame = self.closeButton.frame;
    btnFrame.origin = NSMakePoint(indent, indent);
    self.closeButton.frame = btnFrame;
    
    
    CGPoint btnMinPoint = NSMakePoint(indent + self.closeButton.frame.origin.x + self.closeButton.frame.size.width, indent);
    CGRect btnMinFrame = self.minButton.frame;
    btnMinFrame.origin = btnMinPoint;
    self.minButton.frame = btnMinFrame;
    
    
    CGPoint btnZoomPoint = NSMakePoint(indent + self.minButton.frame.origin.x + self.minButton.frame.size.width, indent);
    CGRect btnZoomFrame = self.zoomButton.frame;
    btnZoomFrame.origin = btnZoomPoint;
    self.zoomButton.frame = btnZoomFrame;
}


- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    NSColor *color = self.backgroundColor;
    [color set];
    NSRectFill(dirtyRect);
}

#pragma mark WFSetHoverDelegate method

- (void)setButtonHover:(BOOL)isHover
{
    self.closeButton.hover = self.minButton.hover = self.zoomButton.hover = isHover;
}


@end
