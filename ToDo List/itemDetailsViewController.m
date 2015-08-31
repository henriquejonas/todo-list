//
//  itemDetailsViewController.m
//  ToDo List
//
//  Created by Henrique Jonas on 8/31/15.
//  Copyright (c) 2015 2x3. All rights reserved.
//

#import "itemDetailsViewController.h"

@interface itemDetailsViewController ()

@end

@implementation itemDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
  [_itemDescription setText:_item];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
