//
//  AppDelegate.m
//  LoginDemo
//
//  Created by Tony Nuzzi on 8/1/15.
//  Copyright (c) 2015 Tony Nuzzi. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // Init the LoginService
    [self setLoginService:[[LoginService alloc] init]];
    
    // Override point for customization after application launch.
    return YES;
}

@end
