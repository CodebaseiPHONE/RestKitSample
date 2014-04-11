//
//  GeolocationServiceSampleAppDelegate.h
//  RestKitSample
//
//  Created by dbgmacmini2 dbg on 03/04/14.
//  Copyright (c) 2014 codebase. All rights reserved.
//

#import <UIKit/UIKit.h>
@class RestSharedClient;
@interface GeolocationServiceSampleAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;


@property (nonatomic, retain, readonly) RestSharedClient *restSharedClient;
@property (nonatomic, retain, readonly) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, retain, readonly) NSManagedObjectModel *managedObjectModel;
@property (nonatomic, retain, readonly) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@end
