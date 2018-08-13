//
//  DetailViewController.h
//  AddressBook
//
//  Created by Ryohei Miura on 2013/07/20.
//  Copyright (c) 2013年 Ryohei Miura. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Person.h"

@interface DetailViewController : UIViewController

@property (strong, nonatomic) Person *detailItem;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak,nonatomic) IBOutlet UITextField *zipCodeField;
@property (weak,nonatomic) IBOutlet UITextField *stateField;
@property (weak,nonatomic) IBOutlet UITextField *cityField;
@property (weak,nonatomic) IBOutlet UITextField *otherField;

@end