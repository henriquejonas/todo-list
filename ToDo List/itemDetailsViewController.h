//
//  itemDetailsViewController.h
//  ToDo List
//
//  Created by Henrique Jonas on 8/31/15.
//  Copyright (c) 2015 2x3. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface itemDetailsViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *itemDescription;
@property (strong, nonatomic) NSString *item;

@end
