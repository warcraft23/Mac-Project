//
//  Person.h
//  HelloObjC
//
//  Created by Edward Eric on 15/1/8.
//  Copyright (c) 2015年 Edward Eric. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AnimalDelegate.h"

@interface Person : NSObject<AnimalDelegate>
{

    @private
    NSString *_name;
    int _age;
    
    @public
    float height;
    NSString *birthday;
    NSString *_degress;
    NSString *_position;

    @protected
    NSString *_nation;
    
}

@property NSString *name;
@property int age;
@property NSString *birthday;
@property NSString *education;
@property NSString *degress;
@property NSString *postion;
@property float weight;

-(id)initWithName:(NSString *)name andAge:(int )age;
+(id)personWithName:(NSString *)name andAge:(int)age;

-(void)setName:(NSString *)name;
-(void)showMessage:(NSString *)message;
-(void)printInfo;

-(void)eat;
@end
