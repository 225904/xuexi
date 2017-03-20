//
//  ViewController1.h
//  学习
//
//  Created by 只牵你手 on 2016/11/1.
//  Copyright © 2016年 shazhichao. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol passvaule <NSObject>

-(void)passvauil:(NSString *)pass;

@end
@interface ViewController1 : UIViewController
@property(nonatomic,weak) id <passvaule> delegate;
@property(nonatomic,copy)void (^black)(NSString*bb);

@end
