//
//  Address.h
//  AddressBook
//
//  Created by Ryohei Miura on 2013/07/20.
//  Copyright (c) 2013年 Ryohei Miura. All rights reserved.
//

#import <CoreData/CoreData.h>

@interface Address : NSManagedObject

@property (strong, nonatomic) NSString *zipCode;
@property (strong, nonatomic) NSString *state;
@property (strong, nonatomic) NSString *city;
@property (strong, nonatomic) NSString *other;

@end
