


// Copyright © 2020 Sasza. All rights reserved.


#import "Client.h"

@interface Client()

@end

@implementation Client

//initializer

+(Client*)createWithName:(NSString *)name {
    
    Client* obj = [[Client alloc] init];
    
    obj.name = name;
    
    obj.account = 300;
    
    obj.isThereTransactionsInMonth = YES;
    
    return obj;
    
}

-(NSString*)description {
    
    return  self.name;
    
}

-(void)dealloc {
    
    NSLog(@"Экземпляр %@ класса Client уничтожен", self.description);
    
}


@end
