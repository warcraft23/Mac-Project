//
//  KCButton.h
//  BlockTest
//
//  Created by Edward Eric on 15/1/13.
//  Copyright (c) 2015年 Edward Eric. All rights reserved.
//

#import <Foundation/Foundation.h>
@class KCButton;
typedef void (^KCButtonClick)(KCButton *);


@interface KCButton : NSObject



#pragma mark -属性
#pragma mark 点击操作属性

@property (nonatomic,assign)KCButtonClick onClick;


#pragma mark -公共属性
#pragma mark 点击方法
-(void)click;
@end
