//
//  Gist.h
//  RestKitSample
//
//  Created by dbgmacmini2 dbg on 09/04/14.
//  Copyright (c) 2014 codebase. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
@class RKEntityMapping;

@interface Gist : NSManagedObject

@property (nonatomic, retain) NSString * commitUrl;
@property (nonatomic, retain) NSString * forkUrl;
@property (nonatomic, retain) NSString * objectId;
@property (nonatomic, retain) NSString * url;
+(Gist*)getDataModel:(NSManagedObjectContext*)context;
+ (NSDictionary*)getKeyMapping;
//+ (RKEntityMapping *) responseMapping;
@end
