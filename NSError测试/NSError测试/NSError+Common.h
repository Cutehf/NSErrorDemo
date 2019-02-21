//
//  NSError+Common.h
//  NSError测试
//
//  Created by wangzhe on 2019/2/20.
//  Copyright © 2019年 MoGuJie. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

//domain
FOUNDATION_EXPORT NSString *const NSCommonErrorDomain;

/**错误状态码*/
typedef NS_ENUM(NSInteger,NSCommonErrorCode){
    NSCommonErrorCodeUnKnow = -1000,
    NSCommonErrorCodeSucc = -1001,
    NSCommonErrorCodefailed = -1002,
};

@interface NSError (Common)

+(NSError*)errorCode:(NSCommonErrorCode)code;

+(NSError*)errorCode:(NSCommonErrorCode)code userInfo:(nullable NSDictionary*)userInfo;

@end

NS_ASSUME_NONNULL_END
