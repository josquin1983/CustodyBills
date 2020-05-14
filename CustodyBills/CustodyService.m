

// Copyright © 2020 Sasza. All rights reserved.


#import "CustodyService.h"

#import "Client.h"

#import "Bill.h"


@implementation CustodyService

const int SUM = 149;


//adding clients


- (void)addClientsWithNamesArr: (NSMutableArray *) names {
    
    self.clients = [[NSMutableArray alloc] init];
    
    for (NSString *name in names) {
        
        Client *client = [Client createWithName:name];
        
        NSString *str = [NSString stringWithFormat:@"Открыт счет депо клиенту %@у", client.name];
        
        NSLog(@"%@", str);

        [self.clients addObject:client];
    
    }

    
}

//bills

- (void)billsToPay {

    for (Client* client in self.clients) {

        if (client.isThereTransactionsInMonth) {

            if (!client.bills) {
                
                client.bills = [[NSMutableArray alloc] init];
                
            }
            
            Bill * bill = [[Bill alloc] initWithClientsName: client.name];
            
            [client.bills addObject:bill];
            
            NSLog(@"Счет №%d от %@ выставлен клиенту %@у", bill.numberOfBill, bill.formattedDateString, bill.name);
            
            client.isThereTransactionsInMonth = NO;


        }

    }

}

//payment


- (void)payBills {

for (Client* client in _clients) {
    
    for (Bill* bill in client.bills) {
        
        if (bill.isPaid) {
            
            NSLog(@"Счет №%d клиента %@а уже оплачен!", bill.numberOfBill, client.name);
            
        } else if (client.account >= 149) {
            
            client.account -= SUM;
            
            [bill regPaymentWithDate:[NSDate date]];
            
            NSLog(@"Счет №%d на сумму %d оплачен %@", bill.numberOfBill, SUM, bill.formattedPayDateString);
            
        } else {
            
            NSLog(@"Счет №%d не оплачен, недостаточно средств на брокерском счете", bill.numberOfBill);
            
            
        }
        
    }
    
  }
    
}



- (NSString *)description
{
    return [NSString stringWithFormat:@"CustodyService"];
}



- (void)dealloc
{
    NSLog(@"Экземпляр класса %@ уничтожен!", self.description);
}

@end
    
