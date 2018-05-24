//
//  PRGCustomView.m
//  链式编程小工程
//
//  Created by change_pan on 2018/5/24.
//  Copyright © 2018年 kocla. All rights reserved.
//

#import "PRGCustomView.h"

@interface PRGCustomView ()

@property (nonatomic, strong) PRGCustomViewConfig *ViewConfig;

@end


@implementation PRGCustomView

+(instancetype)customView
{
    return [[NSBundle mainBundle] loadNibNamed:@"PRGCustomView" owner:self options:nil].firstObject;
}

-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        
        self.ViewConfig = [PRGCustomViewConfig defaultConfig];
    }
    return self;
}

-(void)setViewConfig:(PRGCustomViewConfig *)ViewConfig
{
    _ViewConfig = ViewConfig;
    self.testLab.textColor = ViewConfig.testLabColor;
    self.testView.backgroundColor = ViewConfig.testViewColor;
    self.showLab.textColor = ViewConfig.showLabColor;
}

-(void)updateViewWithConfig:(void (^)(PRGCustomViewConfig *))block
{
    PRGCustomViewConfig *config = [[PRGCustomViewConfig alloc] init];
    if (block) {
        block(config);
    }
    self.ViewConfig = config;
}
@end
