


// Copyright © 2020 Sasza. All rights reserved.


#import <Foundation/Foundation.h>

// static variable

static int number = 0;

// properties

@interface Bill : NSObject

@property NSString *name;

@property NSString *formattedDateString;

@property NSString *formattedPayDateString;

@property BOOL isPaid;

@property int numberOfBill;

// methods

-(Bill*)initWithClientsName:(NSString*) name;

-(void)regPaymentWithDate:(NSDate*) dateOfPay;



@end
