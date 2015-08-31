//
//  ToDoAdapter.h
//  ToDo List
//
//  Created by Henrique Jonas on 8/31/15.
//  Copyright (c) 2015 2x3. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ToDoAdapter : NSObject<UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) NSMutableArray *todos;
@property (strong, nonatomic) UITableView *tableview;
- (instancetype)initWith:(UITableView *)tableview ;

@end
