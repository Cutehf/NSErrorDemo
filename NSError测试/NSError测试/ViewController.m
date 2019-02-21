//
//  ViewController.m
//  NSError测试
//
//  Created by wangzhe on 2019/2/20.
//  Copyright © 2019年 MoGuJie. All rights reserved.
//

#import "ViewController.h"
#import "NSError+Common.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    NSLog(@"++++%@++",[NSError errorCode:NSCommonErrorCodeSucc]);
    NSLog(@"====%@--",[NSError errorCode:NSCommonErrorCodefailed userInfo:@{@"测试":@"测试失败"}]);
}


@end
