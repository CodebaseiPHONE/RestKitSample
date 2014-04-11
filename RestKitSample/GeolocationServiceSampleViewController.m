//
//  GeolocationServiceSampleViewController.m
//  RestKitSample
//
//  Created by dbgmacmini2 dbg on 03/04/14.
//  Copyright (c) 2014 codebase. All rights reserved.
//

#import "GeolocationServiceSampleViewController.h"
#import "RestSharedClient.h"
#import "RKObjectManager.h"
#import "Gist.h"
#import "GeolocationServiceSampleAppDelegate.h"
@interface GeolocationServiceSampleViewController ()

@end

@implementation GeolocationServiceSampleViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sendRequest:(id)sender {
    [[RKObjectManager sharedManager] getObjectsAtPathForRouteNamed:kRestClientListGistRouteName
                                                            object:nil
                                                        parameters:nil
                                                           success:^(RKObjectRequestOperation *operation, RKMappingResult *mappingResult) {
                                                               // Do something with mappingResult.array.
                                                               
                                                               NSLog(@"result came count %d",[mappingResult.array count]);
                                                           }
                                                           failure:^(RKObjectRequestOperation *operation, NSError *error) {
                                                               // Do something.
                                                               NSLog(@"result error");
                                                           }];
}
-(void)displayDataCount
{
    GeolocationServiceSampleAppDelegate* delegate = [[UIApplication sharedApplication]delegate];
    
    
    
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
  
    //Setting Entity to be Queried
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Gist"
                                 inManagedObjectContext:delegate.managedObjectContext];
    [fetchRequest setEntity:entity];
        NSError* error1;
       // Query on managedObjectContext With Generated fetchRequest
    NSArray *fetchedRecords = [delegate.managedObjectContext executeFetchRequest:fetchRequest error:&error1];
    if (![delegate.managedObjectContext save:&error1]) {
    NSLog(@"No Records Founddata count is %@", [error1 localizedDescription]);
    }
    else
    {
          NSLog(@"Data count is %d",[fetchedRecords count]);
    }
}
@end
