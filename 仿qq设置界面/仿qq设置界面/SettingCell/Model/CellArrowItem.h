//
//  CellArrowItem.h
//  仿qq设置界面
//
//  Created by jason on 15-3-27.
//  Copyright (c) 2015年 jason. All rights reserved.
//  cell 右边为箭头的模型

#import "CellRowModel.h"

@interface CellArrowItem : CellRowModel
@property (nonatomic,assign) Class destVC; //控制器class

- (instancetype)initWithIcon:(NSString *)icon title:(NSString *)title destClass:(Class)destVc;
@end
