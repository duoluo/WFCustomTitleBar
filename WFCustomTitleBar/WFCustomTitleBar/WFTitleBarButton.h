//
//  WFTitleBarButton.h
//  WFCustomTitleBar
//
//  Created by wang feng on 16/12/9.
//  Copyright © 2016年 Wright. All rights reserved.
//

#import "WFStateButton.h"

typedef NS_ENUM(NSInteger, TitleBarButtonType)
{
    TitleBarButtonTypeClose,
    TitleBarButtonTypeMinimize,
    TitleBarButtonTypeZoom,
};

@protocol WFSetHoverDelegate <NSObject>

- (void)setButtonHover:(BOOL)isHover;

@end

@interface WFTitleBarButton : WFStateButton

@property (nonatomic, weak) id<WFSetHoverDelegate> delegate;

- (instancetype)initWithType:(TitleBarButtonType)type;

@end
