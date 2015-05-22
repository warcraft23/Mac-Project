//
//  main.m
//  timeDemo
//
//  Created by Edward Eric on 15/2/5.
//  Copyright (c) 2015年 Edward Eric. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSDate *date1=[NSDate date];
        NSLog(@"%@",date1);
        
        NSDate *date2=[NSDate dateWithTimeIntervalSinceNow:1000];
        NSLog(@"%@",date2);
        
        NSDate *date3=[NSDate distantFuture];
        NSLog(@"%@",date3);
//        [date3 release];
        date3=[NSDate distantFuture];
        NSLog(@"%@",date3);
        
        NSTimeInterval timeInterval=[date3 timeIntervalSinceDate:date1];
        NSLog(@"%.2f",timeInterval);
        
        
        NSLog(@"Hello, World!");
    }
    return 0;
}
