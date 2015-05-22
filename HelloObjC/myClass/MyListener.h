//
//  MyListener.h
//  HelloObjC
//
//  Created by Edward Eric on 15/1/13.
//  Copyright (c) 2015年 Edward Eric. All rights reserved.
//

#import <Foundation/Foundation.h>

@class KCButton;
@protocol KCButtonDelegate;


@interface MyListener : NSObject <KCButtonDelegate>
-(void)onClick:(KCButton *)button;
@end
