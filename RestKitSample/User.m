//
//  User.m
//  RestKitSample
//
//  Created by dbgmacmini2 dbg on 14/04/14.
//  Copyright (c) 2014 codebase. All rights reserved.
//

#import "User.h"


@implementation User

@dynamic login;
@dynamic avatarId;
@dynamic avatarUrl;
+ (RKEntityMapping *) responseMapping {
    // Create an object mapping.
    RKEntityMapping *mapping = [RKEntityMapping mappingForEntityForName:@"User" inManagedObjectStore:[RKManagedObjectStore defaultStore]];
    [mapping addAttributeMappingsFromDictionary:[User getKeyMapping]];
    
    // Add some relation mappings (if any.)
    //    [mapping addPropertyMapping:[RKRelationshipMapping relationshipMappingFromKeyPath:@"repositories" toKeyPath:@"repositories" withMapping:[GMRepository responseMapping]]];
    
    return mapping;
}
+ (NSDictionary*)getKeyMapping {
    return @{
             @"login": @"login",
             @"gravatar_id": @"avatarId",
             @"avatar_url": @"avatarUrl",
             //             @"id":@"userId",
             };
}
@end
