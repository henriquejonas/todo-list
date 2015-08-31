//
//  ToDoAdapter.m
//  ToDo List
//
//  Created by Henrique Jonas on 8/31/15.
//  Copyright (c) 2015 2x3. All rights reserved.
//

#import "ToDoAdapter.h"
#import "ToDoCell.h"

@implementation ToDoAdapter

- (instancetype)initWith:(UITableView *)tableview {
  self = [super init];
  
  if (self) {
    _tableview = tableview;
    _todos = [[NSMutableArray alloc ] init];
    
    [_tableview setDataSource:self];
    [_tableview setDelegate:self];
  }
  
  return self;
}

-(UITableViewCell *)tableView:(UITableView *)tableView
        cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  ToDoCell *cell = [[[NSBundle mainBundle] loadNibNamed:@"ToDoCell"
                                                  owner:nil
                                                options:nil] firstObject];

  [[cell item] setText:[_todos objectAtIndex:[indexPath row]]];
  
  return cell;
}
- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section{
  return [_todos count];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
  [[NSNotificationCenter defaultCenter] postNotificationName:@"observerRow"
                                                      object: [_todos objectAtIndex:[indexPath row]]
                                                    userInfo:nil ];
}




@end
