//
//  main.m
//  dictDemo
//
//  Created by Edward Eric on 15/2/5.
//  Copyright (c) 2015年 Edward Eric. All rights reserved.
//

#import <Foundation/Foundation.h>

void test1(){
    NSDictionary *dict1=[NSDictionary dictionaryWithObject:@"1" forKey:@"a"];
    NSLog(@"%@",dict1);
    
    NSDictionary *dict2=[NSDictionary dictionaryWithObjectsAndKeys:
                         @"1",@"a",
                         @"2",@"b",
                         @"3",@"c",
                         @"4",@"d",
                         nil];
    NSLog(@"%@",dict2);
    
    NSDictionary *dict3=[NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects:@"1",@"2", nil ]
                                                    forKeys:[NSArray arrayWithObjects:@"a",@"b", nil ]];
    NSLog(@"%@",dict3);
    
    NSDictionary *dict4=@{@"1":@"a",    @"2":@"b",  @"3":@"c",  @"4":@"d"};
    NSLog(@"%@",dict4);
}

void test2(){
    NSDictionary *dict1=[NSDictionary dictionaryWithObjectsAndKeys:
                        @"1",@"a",
                        @"2",@"b",
                        @"3",@"c",
                        @"4",@"d",
                        nil];
    NSLog(@"%@",dict1);
    NSLog(@"Dictionary Count:%zi",[dict1 count]);
//    NSLog(@"b:%@",[dict1 valueForKey:@"b"]);
    NSLog(@"b:%@",dict1[@"b"]);
    NSLog(@"Key:%@ Value:%@",[dict1 allKeys],[dict1 allValues]);
    
    NSLog(@"Search %@",[dict1 objectsForKeys:[NSArray arrayWithObjects:@"a",@"c",@"e", nil] notFoundMarker:@"not found!"]);
    
}

void test3(){
    NSDictionary *dict1=[NSDictionary dictionaryWithObjectsAndKeys:
                         @"1",@"a",
                         @"2",@"b",
                         @"3",@"c",
                         @"4",@"d",
                         nil];
    for(id key in dict1){
        NSLog(@"%@:%@",key,[dict1 objectForKey:key]);
    }
    NSEnumerator *enumerator=[dict1 keyEnumerator];
    id key=nil;
    while(key=[enumerator nextObject]){
    
        NSLog(@"%@:%@",key,[dict1 objectForKey:key]);
    }
    
    [dict1 enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
        NSLog(@"%@:%@",key,obj);
    }];
}

void test4(){
    NSMutableDictionary *dict1=[NSMutableDictionary dictionaryWithObjectsAndKeys:
                               @"1",@"a",
                               @"2",@"b",
                               @"3",@"c",
                               @"4",@"d", nil];
    [dict1 removeObjectForKey:@"c"];
    NSLog(@"%@",dict1);
    
    [dict1 addEntriesFromDictionary:@{@"e":@"5",@"f":@"6"}];
    NSLog(@"%@",dict1);
    
    [dict1 setValue:@"8" forKey:@"a"];
    NSLog(@"%@",dict1);

}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        
        NSLog(@"Hello, World!");
    }
    
//    test1();
//    test2();
//    test3();
    test4();
    return 0;
}
