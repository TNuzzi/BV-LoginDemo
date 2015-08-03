//
//  RedPillViewController.m
//  LoginDemo
//
//  Created by Tony Nuzzi on 8/2/15.
//  Copyright (c) 2015 Tony Nuzzi. All rights reserved.
//

#import "AccountViewController.h"

@implementation AccountViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Get the login service from the AppDelegate
    AppDelegate *appDeleate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    [self setLoginService:[appDeleate loginService]];
    
    // Set this controller as delegate
    [self.loginService setDelegate:self];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    // Check the authentication
    if(![self.loginService isUserAuthenticated]) {
        
        [self performSelector:@selector(preformUserLogin)
                   withObject:nil
                   afterDelay:0.0];
    }
}

-(void) preformUserLogin {
    [self.loginService preformAuthentication];
}

#pragma mark - LoginDelegate
- (void) userAuthenticationExpired {
    NSLog(@"userAuthenticationExpired");
    
    [self preformUserLogin];
}

- (void) authenicationSuccess {
    NSLog(@"authenicationSuccess");
}

@end
