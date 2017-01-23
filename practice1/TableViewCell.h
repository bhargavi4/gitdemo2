//
//  TableViewCell.h
//  practice1
//
//  Created by siva bhargavi on 05/01/17.
//  Copyright © 2017 siva bhargavi. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol testbtndelegate<NSObject>
-(void) btnclickincell:(UIButton *)sender;
@end
@interface TableViewCell : UITableViewCell
- (IBAction)btnAction:(UIButton *)sender;
@property(nonatomic,assign)id<testbtndelegate>mydelegate;
@property (weak, nonatomic) IBOutlet UIButton *btnout;
@end
