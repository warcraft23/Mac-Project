//
//  MyListener.m
//  HelloObjC
//
//  Created by Edward Eric on 15/1/13.
//  Copyright (c) 2015年 Edward Eric. All rights reserved.
//

#import "MyListener.h"
#import "KCButton.h"

@implementation MyListener
-(void)onClick:(KCButton *)button{
    NSLog(@"The Button %@ is on-clicked!",button);
}
@end
