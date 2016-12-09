//
//  WFTitleBarButton.m
//  WFCustomTitleBar
//
//  Created by wang feng on 16/12/9.
//  Copyright © 2016年 Wright. All rights reserved.
//

#import "WFTitleBarButton.h"

@implementation WFTitleBarButton

- (instancetype)initWithFrame:(NSRect)frameRect
{
    self = [super initWithFrame:frameRect];
    if (self) {
        [self setButtonType:NSMomentaryChangeButton];
        self.bordered = false;
        CGRect frame = self.frame;
        frame.size = NSMakeSize(16, 16);
        self.frame = frame;
    }
    
    return self;
}

- (instancetype)initWithType:(TitleBarButtonType)type
{
    self = [super init];
    if (self) {
        [self setButtonType:NSMomentaryChangeButton];
        self.bordered = false;
        CGRect frame = self.frame;
        frame.size = NSMakeSize(16, 16);
        self.frame = frame;
        [self setType:type];
    }
    
    return self;
}

- (void)mouseEntered:(NSEvent *)theEvent
{
    [super mouseEntered:theEvent];
    [self.delegate setButtonHover:TRUE];
}

- (void)mouseExited:(NSEvent *)theEvent
{
    [super mouseExited:theEvent];
    [self.delegate setButtonHover:FALSE];
}

- (void)setType:(TitleBarButtonType)type
{
    switch (type) {
        case TitleBarButtonTypeClose:
            [self setButtonImageForNormal:@"btn_close_normal" highlighted:@"btn_close_hover" selected:@"btn_close_pressed" disabled:nil];
            break;
        case TitleBarButtonTypeMinimize:
            [self setButtonImageForNormal:@"btn_min_normal" highlighted:@"btn_min_hover" selected:@"btn_min_pressed" disabled:nil];
            break;
        case TitleBarButtonTypeZoom:
            [self setButtonImageForNormal:@"btn_zoom_normal" highlighted:@"btn_zoom_hover" selected:@"btn_zoom_pressed" disabled:nil];
            break;
        default:
            break;
    }
}

@end
