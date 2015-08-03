//
//  LoginViewController.h
//  LoginDemo
//
//  Created by Tony Nuzzi on 8/2/15.
//  Copyright (c) 2015 Tony Nuzzi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "LoginService.h"

@interface LoginViewController : UIViewController
    @property (nonatomic, weak) LoginService* loginService;

@property (weak, nonatomic) IBOutlet UITextField *username;
@property (weak, nonatomic) IBOutlet UITextField *password;

@end
