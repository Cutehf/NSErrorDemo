//
//  NSError+Common.m
//  NSError测试
//
//  Created by wangzhe on 2019/2/20.
//  Copyright © 2019年 MoGuJie. All rights reserved.
//

#import "NSError+Common.h"


NSString *const NSCommonErrorDomain = @"NSCommonErrorDomain";

@implementation NSError (Common)

+(NSError*)errorCode:(NSCommonErrorCode)code{
    return [self errorCode:code userInfo:nil];
}

+(NSError*)errorCode:(NSCommonErrorCode)code userInfo:(nullable NSDictionary*)userInfo{
    if (userInfo) {
        return [NSError errorWithDomain:NSCommonErrorDomain code:code userInfo:userInfo];
    }else{
        return [NSError errorWithDomain:NSCommonErrorDomain code:code userInfo:
                @{
                  NSLocalizedDescriptionKey:@"返回的消息？",
                  NSLocalizedFailureReasonErrorKey:@"失败原因",
                  NSLocalizedRecoverySuggestionErrorKey:@"意见：恢复初始化",
                  @"自定义":@"自定义的内容",
                  }];
    }
}

@end
