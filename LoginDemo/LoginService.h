//
//  LoginService.h
//  LoginDemo
//
//  Created by Tony Nuzzi on 8/2/15.
//  Copyright (c) 2015 Tony Nuzzi. All rights reserved.
//
#import <Foundation/Foundation.h>

@protocol LoginDelegate <NSObject>
    - (void) userAuthenticationExpired;
    - (void) authenicationSuccess;
@end

@interface LoginService : NSObject
    @property (nonatomic, weak) id<LoginDelegate> delegate;
    @property (nonatomic, assign) BOOL isAuthenticated;

    - (BOOL) isUserAuthenticated;
    - (void) preformAuthentication;
    - (BOOL) validateCredentials:(NSString *) username
                        password:(NSString *) aPassword;
    - (void) invalidateCredentials;
@end
