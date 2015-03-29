//
//  SettingCell.m
//  仿qq设置界面
//
//  Created by jason on 15-3-27.
//  Copyright (c) 2015年 jason. All rights reserved.
//

#import "SettingCell.h"
#import "CellRowModel.h"
#import "CellArrowItem.h"
#import "CellSwitchItem.h"

@interface SettingCell ()
@property (nonatomic,strong) UISwitch *switchR;
@property (nonatomic,strong) UIImageView *imageR;

@end

@implementation SettingCell

- (UISwitch *)switchR
{
    if (_switchR == nil) {
        _switchR = [[UISwitch alloc] init];
    }
    return _switchR;
}

- (UIImageView*)imageR
{
    if (_imageR == nil) {
        _imageR = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"CellArrow"]];
    }
    return _imageR;
}


+ (instancetype)cellWithTableView:(UITableView*)tableView
{
    static NSString *ID = @"cell";
    SettingCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[SettingCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }

    
    return cell;
}

- (void)setRowItem:(CellRowModel *)rowItem
{
    _rowItem = rowItem;
    self.textLabel.text = rowItem.title;
    self.imageView.image = [UIImage imageNamed:rowItem.icon];
    
    if ([_rowItem isKindOfClass:[CellArrowItem class]]) { //右边箭头
        self.accessoryView = self.imageR;
    }else if ([_rowItem isKindOfClass:[CellSwitchItem class]]){ //右边开关
        self.accessoryView = self.switchR;
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        
    }else{
        self.accessoryView = nil;
    }
    
}


@end
