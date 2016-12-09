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
#import "WFMainView.h"

@interface AppDelegate ()

@property (weak) IBOutlet WFMainWindow *window;
@property (weak) IBOutlet NSTextField *heightValue;
@property (weak) IBOutlet NSSlider *heightSlider;
@property (weak) IBOutlet WFMainView *mainView;
@property (weak) IBOutlet NSButton *changeColorButtton;
@property (weak) IBOutlet NSButton *hideButton;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {

    //设置contentview为模糊背景
    [self.mainView insertVibrancyViewBlendingMode:NSVisualEffectBlendingModeBehindWindow];
    //设置窗口为圆角
    self.mainView.wantsLayer            = YES;
    self.mainView.layer.cornerRadius    = 7.0;
    self.mainView.layer.masksToBounds   = YES;
    //初始化高度和颜色
    self.mainView.titlebarHeight = [self.heightSlider doubleValue];

    [self.mainView display];
    self.mainView.titleBarView.backgroundColor = [NSColor redColor];
    [self.heightValue setIntegerValue:[self.heightSlider doubleValue]];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}
- (IBAction)adjustTitleBarHeight:(id)sender {
    
    NSInteger value = [sender doubleValue];
    [self.heightValue setIntegerValue:value];
    self.mainView.titlebarHeight = value;
    [self.mainView display];
}
- (IBAction)changeColor:(id)sender {
    self.mainView.titleBarView.backgroundColor = [NSColor greenColor];
    [self.mainView.titleBarView display];
}
- (IBAction)hideBar:(id)sender {
    self.mainView.titleBarView.isHidden ? [self.mainView.titleBarView setHidden:NO] : [self.mainView.titleBarView setHidden:YES];
    [self.mainView.titleBarView display];
}


@end
