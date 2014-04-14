//
//  GistModel.m
//  RestKitSample
//
//  Created by dbgmacmini2 dbg on 08/04/14.
//  Copyright (c) 2014 codebase. All rights reserved.
//

#import "GistModel.h"
#import "RKObjectManager.h"
#import "RKRelationshipMapping.h"
#include "UserModel.h"
@implementation GistModel
@synthesize commitURL,forkURL,objectID,url,userModel;

+ (NSDictionary*)getKeyMapping {
    return @{
             @"url": @"url",
             @"forks_url": @"forkURL",
             @"commits_url": @"commitURL",
             @"id":@"objectID",
             };
}
+ (RKObjectMapping *) responseMapping {
    // Create an object mapping.
    RKObjectMapping *mapping = [RKObjectMapping mappingForClass:[GistModel class]];
    [mapping addAttributeMappingsFromDictionary:[GistModel getKeyMapping]];
    
    // Add some relation mappings (if any.)
//    [mapping addPropertyMapping:[RKRelationshipMapping relationshipMappingFromKeyPath:@"repositories" toKeyPath:@"repositories" withMapping:[GMRepository responseMapping]]];
    [mapping addPropertyMapping:[RKRelationshipMapping relationshipMappingFromKeyPath:@"user"
                                                                                toKeyPath:@"userModel"
                                                                              withMapping:[UserModel responseMapping]]];
    return mapping;
}



/*
 
 
 "url": "https://api.github.com/gists/10109633",
 "forks_url": "https://api.github.com/gists/10109633/forks",
 "commits_url": "https://api.github.com/gists/10109633/commits",
 "id": "10109633",
 "git_pull_url": "https://gist.github.com/10109633.git",
 "git_push_url": "https://gist.github.com/10109633.git",
 "html_url": "https://gist.github.com/10109633",
 */
@end
