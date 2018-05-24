//
//  PRGCustomView.h
//  链式编程小工程
//
//  Created by change_pan on 2018/5/24.
//  Copyright © 2018年 kocla. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PRGCustomViewConfig.h"

@interface PRGCustomView : UIView
@property (weak, nonatomic) IBOutlet UILabel *testLab;
@property (weak, nonatomic) IBOutlet UIView *testView;
@property (weak, nonatomic) IBOutlet UILabel *showLab;

+(instancetype)customView;

-(void)updateViewWithConfig: (void(^)(PRGCustomViewConfig *config))block;


@end
