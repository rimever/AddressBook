//
//  Person.h
//  AddressBook
//
//  Created by Ryohei Miura on 2013/07/20.
//  Copyright (c) 2013年 Ryohei Miura. All rights reserved.
//

#import <CoreData/CoreData.h>
#import "Address.h"

@interface Person : NSManagedObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) Address *address;

@end
