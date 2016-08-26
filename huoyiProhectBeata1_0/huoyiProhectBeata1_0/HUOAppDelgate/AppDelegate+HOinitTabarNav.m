//
//  AppDelegate+HOinitTabarNav.m
//  huoyiProhectBeata1_0
//
//  Created by 阿福体育科技公司 on 16/8/26.
//  Copyright © 2016年 阿福体育科技公司. All rights reserved.
//

#import "AppDelegate+HOinitTabarNav.h"

@implementation AppDelegate (HOinitTabarNav)


-(void)setupMainTabarBarController;
{
    UIViewController *vc = [UIViewController new];
    
    vc.view.backgroundColor = [UIColor redColor];
    
    
    self.window.rootViewController = vc;
    
    [self.window makeKeyWindow];
}

@end
