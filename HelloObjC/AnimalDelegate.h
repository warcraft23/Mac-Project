//
//  AnimalDelegate.h
//  HelloObjC
//
//  Created by Edward Eric on 15/1/12.
//  Copyright (c) 2015年 Edward Eric. All rights reserved.
//

#ifndef HelloObjC_AnimalDelegate_h
#define HelloObjC_AnimalDelegate_h


#endif

@protocol AnimalDelegate <NSObject>

@required

-(void)eat;

@optional

-(void)run;
-(void)sleep;
-(void)say;
@end