//
//  AppDelegate.m
//  WFCustomTitleBar
//
//  Created by wang feng on 16/12/9.
//  Copyright © 2016年 Wright. All rights reserved.
//

#import "AppDelegate.h"
#import "NSView+WFVibrancy.h"
#import "WFMainWindow.h"

@interface AppDelegate ()

@property (weak) IBOutlet WFMainWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {

    //设置contentview为模糊背景
    [self.window.contentView insertVibrancyViewBlendingMode:NSVisualEffectBlendingModeBehindWindow];
    //设置窗口为圆角
    self.window.contentView.wantsLayer            = YES;
    self.window.contentView.layer.cornerRadius    = 7.0;
    self.window.contentView.layer.masksToBounds   = YES;
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
