//
//  UserModel.h
//  RestKitSample
//
//  Created by dbgmacmini2 dbg on 08/04/14.
//  Copyright (c) 2014 codebase. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
#import "RKObjectMapping.h"
@interface UserModel : NSObject
@property(strong,nonatomic) NSString* login;
@property(strong,nonatomic) NSString* userId;
@property(strong,nonatomic) NSString* avatarUrl;
@property(strong,nonatomic) NSString* avatarId;
+ (RKObjectMapping *) responseMapping;
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