//
//  ViewController.m
//  学习
//
//  Created by 只牵你手 on 16/8/4.
//  Copyright © 2016年 shazhichao. All rights reserved.
//

#import "ViewController.h"
#import "UIView+XMGExtension.h"
#import "ViewController1.h"
#import "MJRefresh.h"
#import "ViewController+Preson.h"
static  NSMutableArray* _Oncestr;

static id _instance;
@interface ViewController ()<passvaule>
@property(nonatomic,strong)ViewController1 *ViewController;
@property(nonatomic,strong)UIView *DIview;
@property(nonatomic,strong)UILabel *label;
@property(nonatomic,strong)NSString *strsslabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    
    [ViewController shareinst];
    self.view.backgroundColor =[UIColor blueColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 100, 100, 100);
    button.backgroundColor =[UIColor redColor];
    [button addTarget:self action:@selector(buttonclick ) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
     self.label.text = @"w";
    
//    [_instance addObject:@"333"];
   
    _instance = @"edasdfsadf";
    NSLog(@"舍得放手%@",_Oncestr);
    
    
     [self pao];
//    [self.label sizeToFit];
   
}
//-(void)passvauil:(NSString *)pass{
//    NSLog(@"阿法法%@",pass);
//}

+(id)shareinst{
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        _Oncestr = [[NSMutableArray alloc] init];
    });
    
    return _Oncestr;
}






+ (instancetype)allocWithZone:(struct _NSZone *)zone
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [super allocWithZone:zone];
    });
    return _instance;
}
+ (id)sharedInstance
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[NSMutableArray alloc] init];
    });
    return _instance;
}
- (id)copyWithZone:(NSZone *)zone
{
    return _instance;
}






-(void)pao{
    self.www =@"2ssff";
    NSLog(@"对的%@",self.www);
}
-(void)buttonclick{

   self.ViewController  =[[ViewController1 alloc] init];
//    vc.delegate  =self;
    self.ViewController.black = ^(NSString *bb){
    
        [self pppp];
    };
    
   
    [[ViewController sharedInstance] addObject:@"ssss"];
    [self.navigationController pushViewController:self.ViewController animated:YES];
    
    
}
-(void)pppp{
    self.label.text =@"afjakfka";
}
-(UILabel*)label{
    if (!_label) {
        _label = [[UILabel alloc] initWithFrame:CGRectMake(200, 200, 200, 50)];
        _label.numberOfLines = 0;
        _label.text = @"afdsfdsfsdfsdffdsf";
        [_label sizeToFit];
        _label.backgroundColor =[UIColor redColor];
         [self.view addSubview:self.label];
    }
    return _label;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
