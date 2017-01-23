//
//  secondViewController.m
//  practice1
//
//  Created by siva bhargavi on 11/01/17.
//  Copyright © 2017 siva bhargavi. All rights reserved.
//

#import "secondViewController.h"
#import "AppDelegate.h"
#import "xibTableViewCell.h"


@interface secondViewController ()<UITableViewDelegate,UITableViewDataSource,UIApplicationDelegate>
@property (weak, nonatomic) IBOutlet UIButton *btn;
@end

@implementation secondViewController

- (void)viewDidLoad {
    AppDelegate *appdelegate = [[UIApplication sharedApplication] delegate];
    
    _context = [appdelegate.persistentContainer viewContext];
    
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"value :%@",_str);
    
    [_btn setTitle:_str forState:UIControlStateNormal];
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
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    xibTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell = [[[NSBundle mainBundle]loadNibNamed:@"xibTableViewCell" owner:self options:nil]objectAtIndex:0];
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 76;
}
- (IBAction)backtofirst:(UIButton *)sender {
    [self performSegueWithIdentifier:@"backtofirst" sender:self];
}
- (IBAction)addAction:(UIButton *)sender {
    NSLog(@"fnmae : %@",_fname.text);
     NSLog(@"lnmae : %@",_sname.text);
    NSManagedObject *manageObjcart = [NSEntityDescription insertNewObjectForEntityForName:@"Test" inManagedObjectContext:_context];
[manageObjcart setValue:@"abc" forKey:@"fname"];
  [manageObjcart setValue:@"123" forKey:@"lname"];

    NSError *error=nil;
    if ([self.context save:&error])
        
    {
        NSLog(@"Saved data.");
        
    }
    else
    {
        NSLog(@"Failed to save data.");
    }
    


    
}
//- (NSManagedObjectContext *)managedObjectContext {
//    //NSManagedObjectContext *context = nil;
//    id delegate = [[UIApplication sharedApplication] delegate];
//    if ([delegate performSelector:@selector(managedObjectContext)]) {
//        _context = [delegate managedObjectContext];
//    }
//    return _context;
//}





@end
