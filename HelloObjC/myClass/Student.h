//
//  Student.h
//  HelloObjC
//
//  Created by Edward Eric on 15/1/8.
//  Copyright (c) 2015年 Edward Eric. All rights reserved.
//

#import "Person.h"


// #pragma mark是给编译器看的，用于让IDE对我们的代码段进行分组查看
@interface Student : Person

#pragma mark -属性
#pragma mark 分数
@property (nonatomic ,assign)int score;


#pragma mark -动态方法
#pragma mark 带有参数的构造函数
-(id)initWithName:(NSString *)name Age:(int)age andScore:(int)score;

#pragma mark -静态方法
#pragma mark 通过静态方法返回一个对象
+(id)studentWithName:(NSString *)name Age:(int )age andScore:(int)score;

@end
