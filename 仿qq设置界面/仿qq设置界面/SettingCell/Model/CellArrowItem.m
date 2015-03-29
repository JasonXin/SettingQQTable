//
//  CellArrowItem.m
//  仿qq设置界面
//
//  Created by jason on 15-3-27.
//  Copyright (c) 2015年 jason. All rights reserved.
//

#import "CellArrowItem.h"

@implementation CellArrowItem

- (instancetype)initWithIcon:(NSString *)icon title:(NSString *)title destClass:(Class)destVc
{
    if (self = [super initWithIcon:icon title:title]) {
        
        self.destVC = destVc;
    }
    
    
    return self;
}
@end
