//
//  CellGroupModel.h
//  仿qq设置界面
//
//  Created by jason on 15-3-27.
//  Copyright (c) 2015年 jason. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CellGroupModel : NSObject

@property (nonatomic,copy) NSString *headerTitle;

@property (nonatomic,copy) NSString *footerTitle;

@property (nonatomic,strong) NSArray *items;

@end
