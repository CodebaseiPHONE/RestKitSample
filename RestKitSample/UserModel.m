//
//  UserModel.m
//  RestKitSample
//
//  Created by dbgmacmini2 dbg on 08/04/14.
//  Copyright (c) 2014 codebase. All rights reserved.
//

#import "UserModel.h"

@implementation UserModel
@synthesize avatarId,avatarUrl,login,userId;

+ (NSDictionary*)getKeyMapping {
    return @{
             @"login": @"login",
             @"gravatar_id": @"avatarId",
             @"avatar_url": @"avatarUrl",
//             @"id":@"userId",
             };
}
+ (RKObjectMapping *) responseMapping {
    // Create an object mapping.
    RKObjectMapping *mapping = [RKObjectMapping mappingForClass:[UserModel class]];
    [mapping addAttributeMappingsFromDictionary:[UserModel getKeyMapping]];
    
    // Add some relation mappings (if any.)
    //    [mapping addPropertyMapping:[RKRelationshipMapping relationshipMappingFromKeyPath:@"repositories" toKeyPath:@"repositories" withMapping:[GMRepository responseMapping]]];
    
    return mapping;
}

@end
/*
 
 
 "login": "sideshowcoder",
 "id": 108488,
 "avatar_url": "https://avatars.githubusercontent.com/u/108488?",
 "gravatar_id": "5cde19029032f151ca09687f7c8783eb",
 "url": "https://api.github.com/users/sideshowcoder",
 "html_url": "https://github.com/sideshowcoder",
 "followers_url": "https://api.github.com/users/sideshowcoder/followers",
 "following_url": "https://api.github.com/users/sideshowcoder/following{/other_user}",
 "gists_url": "https://api.github.com/users/sideshowcoder/gists{/gist_id}",
 "starred_url": "https://api.github.com/users/sideshowcoder/starred{/owner}{/repo}",
 "subscriptions_url": "https://api.github.com/users/sideshowcoder/subscriptions",
 "organizations_url": "https://api.github.com/users/sideshowcoder/orgs",
 "repos_url": "https://api.github.com/users/sideshowcoder/repos",
 "events_url": "https://api.github.com/users/sideshowcoder/events{/privacy}",
 "received_events_url": "https://api.github.com/users/sideshowcoder/received_events",
 "type": "User",
 "site_admin": false
 
 */