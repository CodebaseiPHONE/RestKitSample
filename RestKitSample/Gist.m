//
//  Gist.m
//  RestKitSample
//
//  Created by dbgmacmini2 dbg on 09/04/14.
//  Copyright (c) 2014 codebase. All rights reserved.
//

#import "Gist.h"
#import "RKEntityMapping.h"
#import "RKObjectManager.h"
@implementation Gist

@dynamic commitUrl;
@dynamic forkUrl;
@dynamic objectId;
@dynamic url;
+(Gist*)getDataModel:(NSManagedObjectContext*)context
{
    return [NSEntityDescription insertNewObjectForEntityForName:@"Gist"
                                  inManagedObjectContext:context];
}
+ (RKEntityMapping *) responseMapping {
    // Create an object mapping.
    RKEntityMapping *mapping = [RKEntityMapping mappingForEntityForName:@"Gist" inManagedObjectStore:[RKObjectManager sharedManager].managedObjectStore];
//    mapping.identificationAttributes = @[@"objectID"];
    [mapping addAttributeMappingsFromDictionary:[Gist getKeyMapping]];
    
    // Add some relation mappings (if any.)
    //    [mapping addPropertyMapping:[RKRelationshipMapping relationshipMappingFromKeyPath:@"repositories" toKeyPath:@"repositories" withMapping:[GMRepository responseMapping]]];
    
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
