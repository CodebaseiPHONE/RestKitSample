//
//  Gist.m
//  RestKitSample
//
//  Created by dbgmacmini2 dbg on 14/04/14.
//  Copyright (c) 2014 codebase. All rights reserved.
//

#import "Gist.h"
#import "User.h"
#import "RKRelationshipMapping.h"

@implementation Gist

@dynamic commitUrl;
@dynamic forkUrl;
@dynamic objectId;
@dynamic url;
@dynamic user;
+ (RKEntityMapping *) responseMapping {
    // Create an object mapping.
    RKEntityMapping *mapping = [RKEntityMapping mappingForEntityForName:@"Gist" inManagedObjectStore:[RKManagedObjectStore defaultStore]];
    [mapping addAttributeMappingsFromDictionary:[Gist getKeyMapping]];
    
    // Add some relation mappings (if any.)
    //    [mapping addPropertyMapping:[RKRelationshipMapping relationshipMappingFromKeyPath:@"repositories" toKeyPath:@"repositories" withMapping:[GMRepository responseMapping]]];
    [mapping addPropertyMapping:[RKRelationshipMapping relationshipMappingFromKeyPath:@"user"
                                                                            toKeyPath:@"user"
                                                                          withMapping:[User responseMapping]]];
    return mapping;
}
+ (NSDictionary*)getKeyMapping {
    return @{
             @"url": @"url",
             @"forks_url": @"forkUrl",
             @"commits_url": @"commitUrl",
        
             //             @"id":@"objectId",
             };
}
@end
