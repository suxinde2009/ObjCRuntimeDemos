//
//  ClassAPatch.m
//  ObjCRuntimeDemos
//
//  Created by Su XinDe on 14/11/13.
//  Copyright (c) 2014年 SkyPrayer Studio. All rights reserved.
//

#import "ClassAPatch.h"

#import <objc/runtime.h>

#import "ClassA.h"

@implementation ClassAPatch

+ (void)load
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [self patchMethod];
    });

}

+ (void)patchMethod
{
    Method oldMethod1 = class_getInstanceMethod([ClassA class], @selector(classAMethod));
    Method newMethod1 = class_getInstanceMethod([ClassAPatch class], @selector(classAPatchMethod));
    method_setImplementation(oldMethod1, method_getImplementation(newMethod1));

}


- (void)classAPatchMethod
{
    NSLog(@"%@: classAPatchMethod", NSStringFromClass([self class]));
}

@end
