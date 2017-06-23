//
//  AppDelegate.h
//  121212
//
//  Created by Apple on 16/8/17.
//  Copyright © 2016年 仝兴伟. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CusNavViewController.h"
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) CusNavViewController *rootNav;
@property (strong, nonatomic) UIWindow *window;
@property (assign, nonatomic) NSInteger allowRotation;

@end

