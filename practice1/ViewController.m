//
//  ViewController.m
//  practice1
//
//  Created by siva bhargavi on 05/01/17.
//  Copyright © 2017 siva bhargavi. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"
#import "secondViewController.h"
#import "SWRevealViewController.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource,testbtndelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    SWRevealViewController *revealViewController = self.revealViewController;
    if ( revealViewController )
    {
        [self.nenu setTarget: self.revealViewController];
        [self.nenu setAction: @selector( revealToggle: )];
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    }
    
    // Do any additional setup after loading the view, typically from a nib.
    _arrlist = @[@"1",@"2",@"3"];
//-----from url
//    NSError *error;
//    NSString *url_string = [NSString stringWithFormat: @"http://YourWebSite.com/high_score.json"];
//    NSData *data = [NSData dataWithContentsOfURL: [NSURL URLWithString:url_string]];
//    NSMutableArray *json = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
//    NSLog(@"json: %@", json);
    
    
    
//------from file
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"File" ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:filePath];
    NSArray *json = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    
    NSDictionary *dict =json;
    NSLog(@"values:%@",[dict valueForKey:@"cast"]);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _arrlist.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    TableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    cell.textLabel.text=[NSString stringWithFormat:@"%@",_arrlist[indexPath.row]];
    cell.mydelegate = self;
    cell.btnout.tag = indexPath.row+100;
    return cell;
}
-(void)btnclickincell:(UIButton *)sender{
    NSLog(@"btnindex %ld",(long)sender.tag-100);
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"index :%ld",(long)indexPath.row);
    _indexval = indexPath.row;
    UIAlertController *controller = [UIAlertController alertControllerWithTitle:@"Title" message:[NSString stringWithFormat:@"%d",_indexval] preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"ok" style:UIAlertActionStyleDefault handler:nil];
    [controller addAction:ok];
[self presentViewController:controller animated:YES completion:nil];
    //[self performSegueWithIdentifier:@"movetosecond" sender:self];
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"movetosecond"]){
    secondViewController *obj = [[secondViewController alloc]init];
  obj =  [segue destinationViewController];
    
    obj.str =[NSString stringWithFormat:@"%@",_arrlist[_indexval]];
    }
}

- (IBAction)menuaction:(UIBarButtonItem *)sender {
}
@end
