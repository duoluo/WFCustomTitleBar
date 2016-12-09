//
//  WFTitleBarView.h
//  WFCustomTitleBar
//
//  Created by wang feng on 16/12/9.
//  Copyright © 2016年 Wright. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "WFTitleBarButton.h"


@interface WFTitleBarView : NSView <WFSetHoverDelegate>

@property (nonatomic, strong) WFTitleBarButton *closeButton;
@property (nonatomic, strong) WFTitleBarButton *minButton;
@property (nonatomic, strong) WFTitleBarButton *zoomButton;
@property (nonatomic, strong) NSColor *backgroundColor;

@end
