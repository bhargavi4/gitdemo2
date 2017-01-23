//
//  sidemenuViewController.m
//  practice1
//
//  Created by siva bhargavi on 18/01/17.
//  Copyright © 2017 siva bhargavi. All rights reserved.
//

#import "sidemenuViewController.h"

@interface sidemenuViewController ()

@property (strong, nonatomic) IBOutlet UIView *theview;
@end

@implementation sidemenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITapGestureRecognizer *gestureRegognizer= [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(Labelclicked:)];
    [_datelbl addGestureRecognizer:gestureRegognizer];
    
    UITextField *txfSearchField = [_searchBar valueForKey:@"_searchField"];
    txfSearchField.backgroundColor = [UIColor colorWithRed:(39.0/255.0) green:(118.0/255.0) blue:(188.0/255.0) alpha:0.5];
    txfSearchField.textColor =[UIColor whiteColor];
    txfSearchField.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"Search" attributes:@{NSForegroundColorAttributeName: [UIColor whiteColor]}];
    _datepicker.datePickerMode = UIDatePickerModeDate;
    _datepicker.backgroundColor = [UIColor whiteColor];
    [_datepicker setValue:[UIColor redColor] forKey:@"textColor"];
    _datelbl.text = [NSString stringWithFormat:@"%@",[_datepicker date]];
    _datepicker.layer.cornerRadius = 10;
    _datepicker.layer.masksToBounds=YES;

}
-(void)Labelclicked:(UIButton *)sender{
    NSLog(@"lblclicked");
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)datepickaction:(UIDatePicker *)sender {
    _datelbl.text = [NSString stringWithFormat:@"%@",[_datepicker date]];
    UIAlertController *controller = [UIAlertController alertControllerWithTitle:@"Title" message:_datelbl.text preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"ok" style:UIAlertActionStyleDefault handler:nil];
    [controller addAction:ok];
}
- (IBAction)segmentAction:(UISegmentedControl *)sender {
    NSLog(@"%d",_segmentout.selectedSegmentIndex);
    if(_segmentout.selectedSegmentIndex == 0){
        _theview.backgroundColor = [UIColor blueColor];
    }else{
    _theview.backgroundColor = [UIColor redColor];
    }
}
@end
