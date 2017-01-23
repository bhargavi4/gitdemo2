//
//  secondViewController.h
//  practice1
//
//  Created by siva bhargavi on 11/01/17.
//  Copyright © 2017 siva bhargavi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
@interface secondViewController : UIViewController
@property(nonatomic,strong)NSString *str;
@property (weak, nonatomic) IBOutlet UITextField *fname;
@property (weak, nonatomic) IBOutlet UITextField *sname;
- (IBAction)backtofirst:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIButton *addbtn;
@property(nonatomic, strong)NSManagedObjectContext *context;
- (IBAction)addAction:(UIButton *)sender;

//-(NSManagedObjectContext *)managedObjectContext;

@end
