//
//  DetailViewController.m
//  AddressBook
//
//  Created by Ryohei Miura on 2013/07/20.
//  Copyright (c) 2013年 Ryohei Miura. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
- (void)configureView;
@end

@implementation DetailViewController

#pragma mark - Managing the detail item

@synthesize detailItem = _detailItem;

// detailItemプロパティ取得メソッド
- (Person *)detailItem {
    if (!_detailItem) {
        _detailItem = [NSEntityDescription insertNewObjectForEntityForName:@"Person" inManagedObjectContext:self.managedObjectContext];
        _detailItem.address = [NSEntityDescription insertNewObjectForEntityForName:@"Address" inManagedObjectContext:self.managedObjectContext];
    }
    return _detailItem;
}


- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.
    [self becomeFirstResponder];
    
    // データをセットする
    if (self.detailItem) {
        self.nameField.text = self.detailItem.name;
        self.zipCodeField.text = self.detailItem.address.zipCode;
        self.stateField.text = self.detailItem.address.state;
        self.otherField.text = self.detailItem.address.other;
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(done)];
    self.navigationItem.rightBarButtonItem = item;
    // QQQ ScrollView Require?
    
    [self configureView];
}

- (void)done
{
    self.detailItem.name = self.nameField.text;
    self.detailItem.address.zipCode = self.zipCodeField.text;
    self.detailItem.address.state = self.stateField.text;
    self.detailItem.address.city = self.cityField.text;
    self.detailItem.address.other = self.otherField.text;
    
    NSError *error = nil;
    // データの保存を行う
    if (![self.managedObjectContext save:&error]) {
        // エラーが発生したらログを出力
        NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
        abort();
    }
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        // アドレス一覧に戻る
        [self.navigationController popViewControllerAnimated:YES];
    }
[self.view endEditing:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
