//
//  MyRuntimePlayground.h
//  ObjCRuntimeDemos
//
//  Created by Su XinDe on 14/11/13.
//  Copyright (c) 2014年 SkyPrayer Studio. All rights reserved.
//

#import <Foundation/Foundation.h>

// 用来运行一堆运行时的测试用例
@interface MyRuntimePlayground : NSObject

// 通过方法替换来实现对软件进行打补丁
+ (void)testClassMethodPatch;

@end
