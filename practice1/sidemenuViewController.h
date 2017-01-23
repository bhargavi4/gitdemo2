//
//  sidemenuViewController.h
//  practice1
//
//  Created by siva bhargavi on 18/01/17.
//  Copyright © 2017 siva bhargavi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface sidemenuViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;
@property (weak, nonatomic) IBOutlet UIDatePicker *datepicker;
@property (weak, nonatomic) IBOutlet UILabel *datelbl;
- (IBAction)datepickaction:(UIDatePicker *)sender;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentout;
- (IBAction)segmentAction:(UISegmentedControl *)sender;


@end
