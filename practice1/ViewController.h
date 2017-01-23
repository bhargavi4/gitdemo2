//
//  ViewController.h
//  practice1
//
//  Created by siva bhargavi on 05/01/17.
//  Copyright © 2017 siva bhargavi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property(nonatomic,strong)NSArray *arrlist;
@property (weak, nonatomic) IBOutlet UITableView *mytblview;
@property(nonatomic,assign)int indexval;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *nenu;
- (IBAction)menuaction:(UIBarButtonItem *)sender;

@end

