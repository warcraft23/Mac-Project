//
//  KCButton.m
//  HelloObjC
//
//  Created by Edward Eric on 15/1/12.
//  Copyright (c) 2015年 Edward Eric. All rights reserved.
//

#import "KCButton.h"



@implementation KCButton

-(void)click{
    NSLog(@"You have clicked the button!");
    
    if([_delegate respondsToSelector:@selector(onClick:)]){
        [_delegate onClick:self];
    }
}

@end
