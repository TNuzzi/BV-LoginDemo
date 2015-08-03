//
//  LoginService.m
//  LoginDemo
//
//  Created by Tony Nuzzi on 8/2/15.
//  Copyright (c) 2015 Tony Nuzzi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LoginService.h"
#import "AppDelegate.h"

@implementation LoginService


- (instancetype)init {
    self = [super init];
    if(self) {
        // Setup to prepare for REST calls and such.  Initialize things that this class will use.
        [self setIsAuthenticated:FALSE];
    }
    
    return self;
}

- (BOOL) isUserAuthenticated {
    // do some extensive logic to determine user authentication
    return [self isAuthenticated];
}

// Show login dialog
- (void) preformAuthentication {
    AppDelegate *appDeleate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    UIViewController* rootVC = appDeleate.window.rootViewController;
    [rootVC performSegueWithIdentifier:@"login" sender:self];
}

- (BOOL) validateCredentials:(NSString *) username
                    password:(NSString *) aPassword {

    // Make rest call to validate user credentials
    [self setIsAuthenticated:TRUE];
    
    [self.delegate authenicationSuccess];
    
    [self performSelector:@selector(invalidateCredentials) withObject:nil afterDelay:5.0];
    
    return [self isAuthenticated];
}

- (void) invalidateCredentials {
    // Clear authentication credentials
    [self setIsAuthenticated:FALSE];
    
    [self.delegate userAuthenticationExpired];
}
@end

