//
//  KCButton.m
//  BlockTest
//
//  Created by Edward Eric on 15/1/13.
//  Copyright (c) 2015年 Edward Eric. All rights reserved.
//

#import "KCButton.h"




@implementation KCButton

//触发KCButton的click方法后
//调用代码块onClick方法
-(void)click   {
    NSLog(@"Invoke KCButton's click method");
    if(_onClick){
        _onClick(self);
    }
}



@end
