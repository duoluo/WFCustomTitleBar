//
//  WFStateButton.h
//  WFStateButton
//
//  Created by wang feng on 16/12/9.
//  Copyright © 2016年 Wright. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface WFStateButton : NSButton

@property (nonatomic, strong) NSImage *imgNormal;
@property (nonatomic, strong) NSImage *imgHighlighted;
@property (nonatomic, strong) NSImage *imgSelected;
@property (nonatomic, strong) NSImage *imgDisabled;

@property (nonatomic, assign) BOOL hover;
@property (nonatomic, assign) BOOL active;


- (void)setButtonImageForNormal:(NSString *)normal
                          highlighted:(NSString *)highlighted
                        selected:(NSString *)selected
                       disabled:(NSString *)disabled;

@end
