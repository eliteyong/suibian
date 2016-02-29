//
//  LMDrawerViewController.m
//  LittleMovies
//
//  Created by qingyun on 16/2/26.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "LMDrawerViewController.h"
#import "LMHeader.h"

@interface LMDrawerViewController ()

@end

@implementation LMDrawerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self creatSearch];
    [self creatHistory];
}

- (void)creatSearch {
    self.btnSeach = [UIButton buttonWithType:UIButtonTypeCustom];
    [self creatOneBtn:self.btnSeach withFrame:CGRectMake(-kBtnNX, kBtnSeachY, kBtnWidthAndHeight, kBtnWidthAndHeight) image:[UIImage imageNamed:@"u=999960449,1473396605&fm=21&gp=0.jpg"]];
    [self.btnSeach addTarget:self action:@selector(handleSeach:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)creatHistory {
    self.btnHistory = [UIButton buttonWithType:UIButtonTypeCustom];
    [self creatOneBtn:self.btnHistory withFrame:CGRectMake(-kBtnNX, kBtnHistoryY, kBtnWidthAndHeight, kBtnWidthAndHeight) image:[UIImage imageNamed:@"u=3451743044,1197984760&fm=21&gp=0.jpg"]];
    [self.btnHistory addTarget:self action:@selector(handleHistory:) forControlEvents:UIControlEventTouchUpInside];}

- (void)creatOneBtn:(UIButton *)btn withFrame:(CGRect)rect image:(UIImage *)image {
    btn.layer.cornerRadius = 40;
    btn.layer.masksToBounds = YES;
    btn.backgroundColor = [UIColor colorWithRed:0.000 green:0.650 blue:0.001 alpha:1.000];
    [btn setImage:image forState:UIControlStateNormal];
    [self.view addSubview:btn];

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
