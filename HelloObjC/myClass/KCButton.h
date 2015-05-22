//
//  KCButton.h
//  HelloObjC
//
//  Created by Edward Eric on 15/1/12.
//  Copyright (c) 2015年 Edward Eric. All rights reserved.
//

#import <Foundation/Foundation.h>

@class KCButton;

@protocol KCButtonDelegate <NSObject>

@required
-(void)onClick:(KCButton *)button;

@optional
-(void)onMouseover:(KCButton *)button;
-(void)onMouseout:(KCButton *)button;



@end

@interface KCButton : NSObject

#pragma mark -属性
#pragma mark 代理属性
@property (nonatomic,retain)id<KCButtonDelegate> delegate;

#pragma mark -公共方法
#pragma mark 点击
-(void)click;


@end
