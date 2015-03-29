//
//  CellRowModel.h
//  仿qq设置界面
//
//  Created by jason on 15-3-27.
//  Copyright (c) 2015年 jason. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^OptionBlock)();


@interface CellRowModel : NSObject

@property (nonatomic,copy) NSString *icon;

@property (nonatomic,copy) NSString *title;


//block保存将要执行的代码
@property (nonatomic,copy) OptionBlock option;


-(instancetype)initWithIcon:(NSString*)icon title:(NSString*)title;

@end
