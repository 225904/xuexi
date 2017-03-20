//
//  ViewController1.m
//  学习
//
//  Created by 只牵你手 on 2016/11/1.
//  Copyright © 2016年 shazhichao. All rights reserved.
//

#import "ViewController1.h"
//#import "ViewController.h"
#import "ViewController+Preson.h"
#define WIDTH [UIScreen mainScreen].bounds.size.width
#define HEIGHT [UIScreen mainScreen].bounds.size.height
@interface ViewController1 ()<UIWebViewDelegate>
{
    NSString *ddd ;
}
@end

@implementation ViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor =[UIColor grayColor];
//    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
//    button.frame = CGRectMake(100, 100, 100, 100);
//    button.backgroundColor =[UIColor redColor];
//    [button addTarget:self action:@selector(buttonclick ) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:button];
//    // Do any additional setup after loading the view.
//    
////    ViewController *vc  =[[ ViewController alloc] init];
////    [vc pao];
//    
//    NSLog(@"%@",[ViewController sharedInstance]);
    
    
    
    
    UIWebView *Gaorenzheng = [[UIWebView alloc] initWithFrame:CGRectMake(0, 44, WIDTH,HEIGHT-70)];
      Gaorenzheng. scalesPageToFit = YES;
    [self.view addSubview: Gaorenzheng];
    
   
    NSURLRequest *req = [NSURLRequest requestWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"https://www.baidu.com"]]];

    [ Gaorenzheng loadRequest:req];
    Gaorenzheng.delegate = self;
    ddd = @"1";

}
-(BOOL)webView:(UIWebView*)webView shouldStartLoadWithRequest:(NSURLRequest*)request navigationType:(UIWebViewNavigationType)navigationType{
    NSLog(@"%@",request.URL);
    if ([ddd isEqual:@"1"]) {
         return YES;
    }
   
    return NO;
    
}
-(void)buttonclick{
//    [self.delegate passvauil:@"5555"];
    if (self.black) {
        self.black(@"5555");
    }
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
