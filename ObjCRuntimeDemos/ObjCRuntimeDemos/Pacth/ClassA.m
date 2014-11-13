//
//  ClassA.m
//  ObjCRuntimeDemos
//
//  Created by Su XinDe on 14/11/13.
//  Copyright (c) 2014年 SkyPrayer Studio. All rights reserved.
//

#import "ClassA.h"

@implementation ClassA


- (void)classAMethod
{
    NSLog(@"%@: classAMethod", NSStringFromClass([self class]));
}

@end
