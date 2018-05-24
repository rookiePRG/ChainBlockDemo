//
//  PRGCustomViewConfig.h
//  链式编程小工程
//
//  Created by change_pan on 2018/5/24.
//  Copyright © 2018年 kocla. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface PRGCustomViewConfig : NSObject

+(instancetype)defaultConfig;

@property (nonatomic, strong) UIColor *testLabColor;
@property (nonatomic, strong) UIColor *showLabColor;
@property (nonatomic, strong) UIColor *testViewColor;

@property (nonatomic, copy, readonly) PRGCustomViewConfig *(^testLabC)(UIColor *color);
@property (nonatomic, copy, readonly) PRGCustomViewConfig *(^showLabC)(UIColor *color);
@property (nonatomic, copy, readonly) PRGCustomViewConfig *(^testViewC)(UIColor *color);

@end
