//
//  HUOTest_1ViewController.m
//  huoyiProhectBeata1_0
//
//  Created by 阿福体育科技公司 on 16/9/1.
//  Copyright © 2016年 阿福体育科技公司. All rights reserved.
//

#import "HUOTest_1ViewController.h"

@interface HUOTest_1ViewController ()

@end

@implementation HUOTest_1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)btnAct:(UIButton *)sender {
    
    [UMVideoAd videoPlay:self videoPlayFinishCallBackBlock:^(BOOL isFinishPlay){
        if (isFinishPlay) {
            NSLog(@"      ");
        }else{
            NSLog(@"    ");
        }
    } videoPlayConfigCallBackBlock:^(BOOL isLegal){
        //    isLegal  app         appkey
//        yes,       no.
        NSString *message = @"";
        if (isLegal) {
        }else{
            message = @"   1   ";
        }
        message = @"      ";
        NSLog(@"  2   %@",message);
    }];
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
