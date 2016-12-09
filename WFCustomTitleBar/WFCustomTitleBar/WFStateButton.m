//
//  WFStateButton.m
//  WFStateButton
//
//  Created by wang feng on 16/12/9.
//  Copyright © 2016年 Wright. All rights reserved.
//

#import "WFStateButton.h"

@interface WFStateButton ()

@property (nonatomic, strong) NSTrackingArea *mouseTrackingArea;

@end

@implementation WFStateButton

- (void)setButtonImageForNormal:(NSString *)normal
                    highlighted:(NSString *)highlighted
                       selected:(NSString *)selected
                       disabled:(NSString *)disabled;
{
    self.imgNormal = [NSImage imageNamed:normal];
    self.imgHighlighted = [NSImage imageNamed:highlighted];
    self.imgSelected = [NSImage imageNamed:selected];
    self.imgDisabled = [NSImage imageNamed:disabled];
    
    self.image = self.imgNormal;
    self.alternateImage = self.imgSelected;
}


- (void)setHover:(BOOL)hover
{
    _hover = hover;
    self.image = hover ? self.imgHighlighted : self.imgNormal;
}

- (void)setActive:(BOOL)active
{
    _active = active;
    self.image = active ? self.imgNormal : self.imgDisabled;
}

- (void)updateTrackingAreas
{
    [super updateTrackingAreas];
    
    if (self.mouseTrackingArea != nil) {
        [self removeTrackingArea:self.mouseTrackingArea];
    }
    
    self.mouseTrackingArea = [[NSTrackingArea alloc] initWithRect:[self bounds] options:NSTrackingMouseEnteredAndExited | NSTrackingActiveAlways owner:self userInfo:nil];
    [self addTrackingArea:self.mouseTrackingArea];
}

- (void)mouseEntered:(NSEvent *)theEvent
{
    if (self.active) {
        self.hover = true;
    }
}

- (void)mouseExited:(NSEvent *)theEvent
{
    if (self.active) {
        self.hover = false;
    }
}

- (BOOL)acceptsFirstResponder
{
    return false;
}
@end
