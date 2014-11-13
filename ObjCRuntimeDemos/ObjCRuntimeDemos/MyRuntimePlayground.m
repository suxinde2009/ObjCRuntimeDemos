//
//  MyRuntimePlayground.m
//  ObjCRuntimeDemos
//
//  Created by Su XinDe on 14/11/13.
//  Copyright (c) 2014年 SkyPrayer Studio. All rights reserved.
//

#import "MyRuntimePlayground.h"
#import "Pacth/ClassA.h"
#import "Pacth/ClassAPatch.h"


@implementation MyRuntimePlayground

+ (void)testClassMethodPatch
{
    ClassA *o = [[ClassA alloc] init];
    [o classAMethod];

}

@end
