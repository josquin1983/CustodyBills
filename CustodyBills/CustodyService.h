


// Copyright © 2020 Sasza. All rights reserved.

#import <Foundation/Foundation.h>

@interface CustodyService : NSObject

@property NSMutableArray *clients;

-(void)addClientsWithNamesArr:(NSMutableArray *) names;

-(void)billsToPay;

-(void)payBills;

@end
