//
//  Person.m
//  HelloObjC
//
//  Created by Edward Eric on 15/1/8.
//  Copyright (c) 2015年 Edward Eric. All rights reserved.
//

#import "Person.h"

@implementation Person


@synthesize education;
@synthesize postion;
@synthesize degress=_degress;
@synthesize weight;
@synthesize birthday;



-(void)showMessage:(NSString *)message{
    NSLog(@"Hello!My name is %@,%@",self->_name,message);
}

-(void)printInfo{
    NSLog(@"Education:%@",education);
    NSLog(@"Weight:%.2f",weight);
    NSLog(@"_degress:%@",_degress);
}

-(id)initWithName:(NSString *)name andAge:(int)age{
    if(self=[super init]){
        self.name=name;
        self.age=age;
    }
    return self;
}

+(id)personWithName:(NSString *)name andAge:(int)age{
    Person *p=[[Person alloc]initWithName:name andAge:age];
    return p;
}

-(NSString *)description{
    return [NSString stringWithFormat:@"This is %@ . Age is %d.",self.name,self.age];
}
-(void)eat{
    NSLog(@"I'm %@.I'm eating.....",self.name);
}

@end
