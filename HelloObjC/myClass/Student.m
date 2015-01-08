//
//  Student.m
//  HelloObjC
//
//  Created by Edward Eric on 15/1/8.
//  Copyright (c) 2015年 Edward Eric. All rights reserved.
//

#import "Student.h"

@implementation Student
-(id)initWithName:(NSString *)name Age:(int)age andScore:(int)score{
    self.name=name;
    self.age=age;
    self.score=score;
    return self;
}

+(id)studentWithName:(NSString *)name Age:(int)age andScore:(int)score{
    return [[Student alloc]initWithName:name Age:age andScore:score];
}

-(NSString *)description{
    return [NSString stringWithFormat:@"This student is called %@.Now he is %d.\nWOW!!!!His score is %d.",self.name,self.age,self.score];
}
@end
