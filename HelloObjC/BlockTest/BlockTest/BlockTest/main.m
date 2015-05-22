//
//  main.m
//  BlockTest
//
//  Created by Edward Eric on 15/1/13.
//  Copyright (c) 2015年 Edward Eric. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KCButton.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        NSLog(@"Hello, World!");
        KCButton *button=[[KCButton alloc]init];
        button.onClick=^(KCButton *btn){
            NSLog(@"Invoke onclick method.the button is %@",btn);
        };
        [button click];
        
    }
    return 0;
}
