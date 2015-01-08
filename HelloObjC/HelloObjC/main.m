//
//  main.m
//  HelloObjC
//
//  Created by Edward Eric on 15/1/7.
//  Copyright (c) 2015年 Edward Eric. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        Person *p=[Person alloc];
//        p=[p init];
        Person *p=[Person new];
        Person *friend=[[Person alloc]initWithName:@"Jimmy" andAge:35];
        Person *mummy=[Person personWithName:@"Rose" andAge:49];
        Person *sb=[Person personWithName:@"Jacky" andAge:7];
        Student *stu=[Student studentWithName:@"Dickies" Age:15 andScore:90];
        
        
        
        p->height=1.73;
        p->birthday=@"1989-08-12";
        p.birthday=@"1990-08-23";
        p.education=@"university";
        p->_position=@"student";
        p.postion=@"engineer";
        p.degress=@"undergraduate";
        p.weight=78.0;
        
        [p setName:@"Edward"];
        
        
        
        
        [p showMessage:@"Welcome to my world!"];
        
        NSLog(@"My birthday is：%@ p->birthday:%@ p.birthday:%@",p.birthday,p->birthday,p.birthday);
        NSLog(@"p->_position:%@ p.postion:%@",p->_position,p.postion);
        NSLog(@"p.weight:%.2f",p.weight);
        
        
        
        NSLog(@"My Height is:%.2f",p->height);
        
        [p printInfo];
        NSLog(@"This is my friend , %@ .He is %d now.", friend.name,friend.age);
        
        NSLog(@"This is Mother , %@ .She is %d now.", mummy.name,mummy.age);
        
//        格式化字符串存在安全隐患，在输出时最后加上个nil可以去掉该警告
        NSLog(sb.description,nil);
        NSLog(stu.description,nil);
//        NSLog(@"Hello, World!");
    }
    return 0;
}
