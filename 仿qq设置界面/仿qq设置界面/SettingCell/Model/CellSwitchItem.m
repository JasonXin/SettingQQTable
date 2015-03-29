//
//  CellSwitchItem.m
//  仿qq设置界面
//
//  Created by jason on 15-3-27.
//  Copyright (c) 2015年 jason. All rights reserved.
//

#import "CellSwitchItem.h"

@implementation CellSwitchItem

-(instancetype)initWithIcon:(NSString*)icon title:(NSString*)title
{
    if (self = [super init]){
        
        self.icon = icon;
        self.title = title;
    }
    return self;
    
}

@end
