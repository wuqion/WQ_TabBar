//
//  WQ_TabBarController.h
//  Volunteer
//
//  Created by Ji Feng on 2019/1/10.
//  Copyright © 2019 吴琼. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WQ_TabBar.h"

NS_ASSUME_NONNULL_BEGIN

@protocol WQ_TabBarControllerDelegate <UITabBarControllerDelegate>

- (void)mTabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController;

@end

@interface WQ_TabBarController : UITabBarController

@property (nonatomic, weak) id<WQ_TabBarControllerDelegate> mDelegate;
@property (nonatomic, strong) WQ_TabBar *mTabbar;

@end

NS_ASSUME_NONNULL_END
