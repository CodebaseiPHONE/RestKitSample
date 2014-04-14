//
//  User.h
//  RestKitSample
//
//  Created by dbgmacmini2 dbg on 14/04/14.
//  Copyright (c) 2014 codebase. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "RKEntityMapping.h"
#import "RKObjectManager.h"
#import "RKManagedObjectStore.h"
@interface User : NSManagedObject

@property (nonatomic, retain) NSString * login;
@property (nonatomic, retain) NSString * avatarId;
@property (nonatomic, retain) NSString * avatarUrl;
+ (RKEntityMapping *) responseMapping;
@end
