//
//  TableViewCell.m
//  practice1
//
//  Created by siva bhargavi on 05/01/17.
//  Copyright © 2017 siva bhargavi. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)btnAction:(UIButton *)sender {
    [self.mydelegate btnclickincell:sender];
}
@end
