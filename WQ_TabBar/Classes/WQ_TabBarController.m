//
//  WQ_TabBarController.m
//  Volunteer
//
//  Created by Ji Feng on 2019/1/10.
//  Copyright © 2019 吴琼. All rights reserved.
//

#import "WQ_TabBarController.h"
#import "UIImage+WQ_Extension.h"

@interface WQ_TabBarController () <UITabBarControllerDelegate>

@end

@implementation WQ_TabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    _mTabbar = [[WQ_TabBar alloc] init];
    [_mTabbar setBackgroundImage:[UIImage imageWithColor:[UIColor whiteColor]]];
    [_mTabbar.centerBtn addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    _mTabbar.centerOffsetY = 10;
    [self setValue:_mTabbar forKeyPath:@"tabBar"];
    self.delegate = self;
}

// 重写选中事件， 处理中间按钮选中问题
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController{
    
    _mTabbar.centerBtn.selected = (tabBarController.selectedIndex == self.viewControllers.count/2);
    
    if (self.mDelegate){
        [self.mDelegate mTabBarController:tabBarController didSelectViewController:viewController];
    }
}

- (void)buttonAction:(UIButton *)button{
    NSInteger count = self.viewControllers.count;
    self.selectedIndex = count/2;//关联中间按钮
    [self tabBarController:self didSelectViewController:self.viewControllers[self.selectedIndex]];
}

@end
