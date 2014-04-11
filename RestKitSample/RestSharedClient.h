//
//  RestSharedClient.h
//  RestKitSample
//
//  Created by dbgmacmini2 dbg on 08/04/14.
//  Copyright (c) 2014 codebase. All rights reserved.
//

#import <Foundation/Foundation.h>
@class RKManagedObjectStore;
#define kRestClientListGistRouteName @"kRestClientListGistRouteName"
#define kRestClientListGistRouteName1 @"kRestClientListGistRouteName1"
@interface RestSharedClient : NSObject

@property (nonatomic, retain) RKManagedObjectStore *amanagedObjectStore;
+ (RestSharedClient*)sharedClient;

@end
