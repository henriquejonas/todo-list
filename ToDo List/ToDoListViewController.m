//
//  ToDoListViewController.m
//  ToDo List
//
//  Created by Henrique Jonas on 8/31/15.
//  Copyright (c) 2015 2x3. All rights reserved.
//

#import "ToDoListViewController.h"
#import "itemDetailsViewController.h"

@interface ToDoListViewController ()

@property (strong, nonatomic) NSString *item;

@end

@implementation ToDoListViewController

#pragma mark - Lifecycle
- (void)viewDidLoad {
    [super viewDidLoad];
  _adapter = [[ToDoAdapter alloc] initWith:_todoList];
  
  [[_adapter todos] addObject:@"Todo de Teste 1"];
  [[_adapter todos] addObject:@"Todo de Teste 2"];
  
  [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(afterClickRow:) name:@"observerRow" object:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
  [(itemDetailsViewController *)[segue destinationViewController] setItem:_item];
}

-(void) afterClickRow:(NSNotification *)row{
  _item = [row object];
  [self performSegueWithIdentifier:@"selecToDoItem" sender:self];
}








@end
