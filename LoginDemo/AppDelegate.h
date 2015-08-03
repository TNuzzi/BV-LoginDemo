//
//  AppDelegate.h
//  LoginDemo
//
//  Created by Tony Nuzzi on 8/1/15.
//  Copyright (c) 2015 Tony Nuzzi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LoginService.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
    @property (nonatomic, strong) LoginService* loginService;
@end

