//
//  ToDoListViewController.h
//  ToDo List
//
//  Created by Henrique Jonas on 8/31/15.
//  Copyright (c) 2015 2x3. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDoAdapter.h"
@interface ToDoListViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITableView *todoList;
@property (strong, nonatomic) ToDoAdapter *adapter;

@end
