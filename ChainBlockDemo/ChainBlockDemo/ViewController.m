//
//  ViewController.m
//  链式编程小工程
//
//  Created by change_pan on 2018/5/24.
//  Copyright © 2018年 kocla. All rights reserved.
//

#import "ViewController.h"
#import "PRGCustomView.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    PRGCustomView *customView = [PRGCustomView customView];
    customView.frame = CGRectMake(0, 100, self.view.bounds.size.width, 200);
    [self.view addSubview:customView];
    
    [customView updateViewWithConfig:^(PRGCustomViewConfig *config) {
       
        config.testViewC([UIColor purpleColor]).testLabC([UIColor redColor]).showLabC([UIColor grayColor]);
    }];
}





@end
