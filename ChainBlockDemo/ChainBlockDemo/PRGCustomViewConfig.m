//
//  PRGCustomViewConfig.m
//  链式编程小工程
//
//  Created by change_pan on 2018/5/24.
//  Copyright © 2018年 kocla. All rights reserved.
//

#import "PRGCustomViewConfig.h"

@implementation PRGCustomViewConfig

+(instancetype)defaultConfig
{
    PRGCustomViewConfig *config = [[PRGCustomViewConfig alloc] init];
    config.testViewColor = [UIColor redColor];
    config.testLabColor = [UIColor blackColor];
    config.showLabColor = [UIColor blackColor];
    return config;
}

-(PRGCustomViewConfig *(^)(UIColor *))testLabC
{
    return ^(UIColor *color){
        self.testLabColor = color;
        return self;
    };
}

-(PRGCustomViewConfig *(^)(UIColor *))testViewC
{
    return ^(UIColor *color){
        self.testViewColor = color;
        return self;
    };
}

-(PRGCustomViewConfig *(^)(UIColor *))showLabC
{
    return ^(UIColor *color){
        self.showLabColor = color;
        return self;
    };
}

@end
