


// Copyright © 2020 Sasza. All rights reserved.

#import "Bill.h"

@interface Bill()

// #pragma MARK: private

@property NSDate *date;

@property NSDate *payDate;

@property char sign;

@property NSDateFormatter *format;

@end

@implementation Bill

// initializer


- (Bill *)initWithClientsName:(NSString *)name {
    
    if (self  = [super init]) {
        
        self.name = name;
        
        self.isPaid = NO;
        
        //
        
        self.format = [[NSDateFormatter alloc] init];
        
        self.format.dateStyle = NSDateFormatterMediumStyle;
                
        self.format.timeStyle = NSDateFormatterNoStyle;
        
        self.date = [NSDate date];
        
        self.formattedDateString = [self.format stringFromDate: self.date];
        
        
        //
        
        self.sign = 'X';
        
        self.numberOfBill = ++number;
        
    }
    
    return self;
    
    
}

// bill's payment registration

- (void)regPaymentWithDate:(NSDate *)dateOfPay {
    
    if (!self.isPaid) {
        
        self.isPaid = YES;
        
    } else {
        
        NSLog(@"Счет уже оплачен %@!",[self.payDate descriptionWithLocale:[NSLocale currentLocale]]);
        
    }
    
    self.payDate = dateOfPay;
    
    self.formattedPayDateString = [self.format stringFromDate:self.payDate];
    
    self.sign = '$';
    
}

@end
