

// Copyright © 2020 Sasza. All rights reserved.

#import <Foundation/Foundation.h>

#import "CustodyService.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // #pragma MARK:  creating CustodyService object
        
        CustodyService *custodian = [[CustodyService alloc] init];
        
        //names array initialization with literal syntax
        
        NSMutableArray *namesArr = [@[@"Иванов", @"Петров", @"Сидоров"] mutableCopy];
        
        [namesArr addObject:@"Привалов"];
    
        
        // #pragma MARK: adding clients
        
        [custodian addClientsWithNamesArr:namesArr];
        
        
        //#pragma MARK:  billing
        
        [custodian billsToPay];
        
        
        //#pragma MARK: fee writing off
        
        [custodian payBills];
        
            
        
    }

    return 0;
}











