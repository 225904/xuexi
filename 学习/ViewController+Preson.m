//
//  ViewController+Preson.m
//  学习
//
//  Created by 只牵你手 on 2017/3/14.
//  Copyright © 2017年 shazhichao. All rights reserved.
//

#import "ViewController+Preson.h"

@implementation ViewController (Preson)
-(NSString *)run{
    return objc_getAssociatedObject(self, @selector(run));
}
-(void)setRun:(NSString *)run{
     objc_setAssociatedObject(self, @selector(run), run, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
//-(void)pao{
//    
//    self.run = @"是对方是否舒服";
//    NSLog(@"%@",self.run);
//}
@end
