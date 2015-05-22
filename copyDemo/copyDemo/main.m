//
//  main.m
//  copyDemo
//
//  Created by Edward Eric on 15/2/6.
//  Copyright (c) 2015年 Edward Eric. All rights reserved.
//

#import <Foundation/Foundation.h>

void test1(){
    
    NSString *name =@"Edward";
    NSString *str1=[NSString stringWithFormat:@"Welcome!I'm %@.",name];
    NSLog(@"Str1 RetainCount is %lu",[str1 retainCount]);
//    NSString *str2=[str1 copy];
    
    
    NSMutableString *mutableString=[str1 mutableCopy];
    NSLog(@"str1=mutableString? %zi",str1==mutableString);
    NSLog(@"RetainCount str1:%lu mutableString:%lu",[str1 retainCount],[mutableString retainCount]);
    
    [mutableString appendString:@"edf"];
    NSLog(@"str1=mutableString? %zi",str1==mutableString);
    NSLog(@"%@",str1);
    NSLog(@"%@",mutableString);
    NSLog(@"RetainCount str1:%lu mutableString:%lu",[str1 retainCount],[mutableString retainCount]);

    NSString *str2=[str1 copy];
    NSLog(@"str1=str2? %zi",str1==str2);
    NSLog(@"Str2 RetainCount is %lu",[str2 retainCount]);
    
    NSString *mutableString1=[mutableString copy];
    [mutableString appendString:@"haha"];
    NSLog(@"mutableString=mutableString1? %zi",mutableString==mutableString1);
    NSLog(@"%@",mutableString);
    NSLog(@"%@",mutableString1);
    
    [str1 release];
    str1=nil;
    [str2 release];
    str2=nil;
    
    [mutableString release];
    mutableString=nil;
    [mutableString1 release];
    mutableString1=nil;
    
    
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    test1();
    return 0;
}

