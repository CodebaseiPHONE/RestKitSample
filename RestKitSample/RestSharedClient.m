//
//  RestSharedClient.m
//  RestKitSample
//
//  Created by dbgmacmini2 dbg on 08/04/14.
//  Copyright (c) 2014 codebase. All rights reserved.
//

#import "RestSharedClient.h"
#import "RKObjectManager.h"
#import "RKMIMETypes.h"
#import "RKLog.h"
#import "RKResponseDescriptor.h"
#import "GistModel.h"
#import "RKRouteSet.h"
#import "RKRoute.h"
#import "RKHTTPUtilities.h"
#import "GeolocationServiceSampleAppDelegate.h"
#import "Gist.h"
#import "RKManagedObjectStore.h"
#import "RKEntityMapping.h"
#import "RKPathUtilities.h"
@implementation RestSharedClient
@synthesize amanagedObjectStore;
static RestSharedClient *sharedClient = nil;
-(id)init
{
    self = [super init];
    
    if(self)
    {

        
       
        
        
        [self initializeObjectManagers];
        if(sharedClient == nil)
        {
            [RestSharedClient setSharedClient:self];
        }
    }
    return self;
}
+ (void)setSharedClient:(RestSharedClient *)client {
    sharedClient = client;
}

+ (RestSharedClient*)sharedClient {
    
    
    
    return sharedClient;
}



- (void)initializeObjectManagers {
    // Uncomment below to enable rest kit logging.
    RKLogConfigureByName("RestKit/Network", RKLogLevelTrace);
  

    // Configure the object manager.
    RKObjectManager *objectManager = [RKObjectManager managerWithBaseURL:[NSURL URLWithString:@"https://api.github.com/"]];
    objectManager.requestSerializationMIMEType = RKMIMETypeJSON;
    [RKObjectManager setSharedManager:objectManager];
    
    // -- Declare routes -- //

    [objectManager.router.routeSet addRoute:[RKRoute routeWithName:kRestClientListGistRouteName pathPattern:@"gists/public" method:RKRequestMethodGET]];
    
    
    
    // NSObject mapping
    RKObjectMapping *userMapping = [GistModel responseMapping];
    RKResponseDescriptor *listUsersResponseDescriptor = [RKResponseDescriptor responseDescriptorWithMapping:userMapping method:RKRequestMethodGET pathPattern:@"gists/public" keyPath:nil statusCodes:RKStatusCodeIndexSetForClass(RKStatusCodeClassSuccessful)];
    [objectManager addResponseDescriptor:listUsersResponseDescriptor];
  
    
    [self setupRKEntity];

        //NSManaged Object Mapping
    RKEntityMapping *mapping = [RKEntityMapping mappingForEntityForName:@"Gist" inManagedObjectStore:[RKManagedObjectStore defaultStore]];
    [mapping addAttributeMappingsFromDictionary:[Gist getKeyMapping]];
    RKResponseDescriptor *gistResponseDescriptor = [RKResponseDescriptor responseDescriptorWithMapping:mapping method:RKRequestMethodGET pathPattern:@"gists/public" keyPath:nil statusCodes:RKStatusCodeIndexSetForClass(RKStatusCodeClassSuccessful)];
    [objectManager addResponseDescriptor:gistResponseDescriptor];

    
    
    
}


- (void)setupRKEntity {
    GeolocationServiceSampleAppDelegate* appDelegate = [UIApplication sharedApplication].delegate;
     RKManagedObjectStore *managedObjectStore = [[RKManagedObjectStore alloc] initWithManagedObjectModel:appDelegate.managedObjectModel];
    self.amanagedObjectStore = managedObjectStore;
    [RKManagedObjectStore setDefaultStore:managedObjectStore];
    [RKObjectManager sharedManager].managedObjectStore = managedObjectStore;
 
    
    
    NSString *path = [RKApplicationDataDirectory() stringByAppendingPathComponent:@"SampleDataModel.sqlite"];
    NSLog(@"Setting up store at %@", path);
    [managedObjectStore addSQLitePersistentStoreAtPath:path
                              fromSeedDatabaseAtPath:nil
                                   withConfiguration:nil
                                             options:nil
                                               error:nil];
   [managedObjectStore createManagedObjectContexts];
   [managedObjectStore createPersistentStoreCoordinator];
    

}


@end
