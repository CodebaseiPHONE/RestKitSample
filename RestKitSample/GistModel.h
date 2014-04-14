//
//  GistModel.h
//  RestKitSample
//
//  Created by dbgmacmini2 dbg on 08/04/14.
//  Copyright (c) 2014 codebase. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RKObjectMapping.h"
#import "UserModel.h"
@interface GistModel : NSObject
@property(strong,nonatomic) NSString* objectID;
@property(strong,nonatomic) NSString* url;
@property(strong,nonatomic) NSString* forkURL;
@property(strong,nonatomic) NSString* commitURL;
@property(strong,nonatomic) UserModel* userModel;
+ (RKObjectMapping *) responseMapping;
@end
