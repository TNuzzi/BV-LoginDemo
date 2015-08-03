//
//  LoginViewController.m
//  LoginDemo
//
//  Created by Tony Nuzzi on 8/2/15.
//  Copyright (c) 2015 Tony Nuzzi. All rights reserved.
//

#import "LoginViewController.h"

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Get the login service from the AppDelegate
    AppDelegate *appDeleate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    [self setLoginService:[appDeleate loginService]];
}

- (IBAction)performLogin:(id)sender {
    
    // Preforms the auth check
    BOOL isAuthenticated = [self.loginService validateCredentials:[self.username text] password: [self.password text]];
    
    // If authenticated hide modal controller
    if (isAuthenticated) {
        [self dismissViewControllerAnimated:TRUE completion:nil];
    }
}

@end
