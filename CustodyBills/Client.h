


// Copyright © 2020 Sasza. All rights reserved.

#import <Foundation/Foundation.h>

@interface Client : NSObject

// properties

@property NSString *name;

@property NSMutableArray *bills;

@property bool isThereTransactionsInMonth;

@property double account;

//methods

+(Client*)createWithName:(NSString *) name;

@end
