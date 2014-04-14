//
//  Gist.h
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
@class User;

@interface Gist : NSManagedObject

@property (nonatomic, retain) NSString * commitUrl;
@property (nonatomic, retain) NSString * forkUrl;
@property (nonatomic, retain) NSString * objectId;
@property (nonatomic, retain) NSString * url;
@property (nonatomic, retain) User *user;
+ (RKEntityMapping *) responseMapping ;
@end
