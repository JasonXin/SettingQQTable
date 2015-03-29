//
//  SettingTableViewController.m
//  仿qq设置界面
//
//  Created by jason on 15-3-27.
//  Copyright (c) 2015年 jason. All rights reserved.
//

#import "SettingTableViewController.h"
#import "CellRowModel.h"
#import "CellGroupModel.h"
#import "SettingCell.h"
#import "CellSwitchItem.h"
#import "CellArrowItem.h"

@interface SettingTableViewController ()
@property (nonatomic,strong) NSMutableArray *datas;
@end

@implementation SettingTableViewController

- (NSMutableArray *)datas
{
    if (_datas == nil) {
        
        CellRowModel *item00 = [[CellArrowItem alloc] initWithIcon:@"handShake" title:@"推送和提醒" destClass:[UIViewController class]];
        CellRowModel *item01 = [[CellRowModel alloc] initWithIcon:@"handShake" title:@"更多"];
        
        CellGroupModel *group1 = [[CellGroupModel alloc] init];
        group1.headerTitle = @"这是头部标题1";
        group1.footerTitle = @"这个尾部标题1";
        group1.items = @[item00,item01];
        
        
        
        CellRowModel *item10 = [[CellSwitchItem alloc] initWithIcon:@"handShake" title:@"摇一摇"];
        CellRowModel *item11 = [[CellRowModel alloc] initWithIcon:@"handShake" title:@"检查版本更新"];
        item11.option = ^{
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"正在检查当前版本是否需要更新" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:@"Cancle", nil];
            [alert show];
        };
        
        CellRowModel *item12 = [[CellArrowItem alloc] initWithIcon:@"handShake" title:@"帮助" destClass:[UIViewController class]];
        
        CellGroupModel *group2 = [[CellGroupModel alloc] init];
        group2.headerTitle = @"这是头部标题2";
        group2.footerTitle = @"这个尾部标题2";
        group2.items = @[item10,item11,item12];
        
        _datas = [NSMutableArray array];
        [_datas addObject:group1];
        [_datas addObject:group2];

        
    }
    return _datas;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}


#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return self.datas.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    CellGroupModel *group = self.datas[section];
    
    return group.items.count;
}


- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SettingCell *setCell = [SettingCell cellWithTableView:tableView];
    
    CellGroupModel *g = self.datas[indexPath.section];
    
    CellRowModel *item = g.items[indexPath.row];
    
    setCell.rowItem = item;
    
    return setCell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    CellGroupModel *g = self.datas[indexPath.section];
    
    CellRowModel *item = g.items[indexPath.row];
    
    if (item.option) {
        item.option();
        
    }else if ([item isKindOfClass:[CellArrowItem class]]) {
        CellArrowItem *arrowItem = (CellArrowItem*)item;
        UIViewController *vc = [[arrowItem.destVC alloc] init];
        vc.view.backgroundColor = [UIColor brownColor];
        [self.navigationController pushViewController:vc animated:YES];
    }
   
}

- (NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    CellGroupModel *g = self.datas[section];
    return g.headerTitle;
}


- (NSString*)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    CellGroupModel *g = self.datas[section];
    return g.footerTitle;
}
@end
