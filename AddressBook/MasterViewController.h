//
//  MasterViewController.h
//  AddressBook
//
//  Created by Ryohei Miura on 2013/07/20.
//  Copyright (c) 2013年 Ryohei Miura. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <CoreData/CoreData.h>

@interface MasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
