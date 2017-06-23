//
//  ViewController.m
//  121212
//
//  Created by Apple on 16/8/17.
//  Copyright © 2016年 仝兴伟. All rights reserved.
//  强制横屏

#import "ViewController.h"
#import "TwoViewController.h"
#import "ThreeViewController.h"
@interface ViewController ()
{
    TwoViewController *vcTwo;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    
    
    UIButton *bt = [[UIButton alloc]initWithFrame:CGRectMake(50, 120, 80, 80)];
    [bt setTitle:@"push1" forState:UIControlStateNormal];
    [bt addTarget:self action:@selector(pushaction) forControlEvents:UIControlEventTouchUpInside];
    [bt setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [bt setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:bt];
    
    UIButton *bt2 = [[UIButton alloc]initWithFrame:CGRectMake(50, 240, 80, 80)];
    [bt2 setTitle:@"push2" forState:UIControlStateNormal];
    [bt2 addTarget:self action:@selector(pushaction2) forControlEvents:UIControlEventTouchUpInside];
    [bt2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [bt2 setBackgroundColor:[UIColor yellowColor]];
    [self.view addSubview:bt2];
}


-(void)pushaction{
    vcTwo = [[TwoViewController alloc]init];
    [self.navigationController pushViewController:vcTwo animated:YES];
}

-(void)pushaction2{
    ThreeViewController *vc = [[ThreeViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}

//是否可以旋转
- (BOOL)shouldAutorotate
{
    return false;
}
//支持的方向
-(UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait;
}


@end
