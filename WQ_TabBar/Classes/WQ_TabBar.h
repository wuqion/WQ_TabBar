//
//  WQ_TabBar.h
//  Volunteer
//
//  Created by Ji Feng on 2019/1/10.
//  Copyright © 2019 吴琼. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, WQ_TabBarCenterButtonPosition){
    WQ_TabBarCenterButtonPositionCenter, // 居中
    WQ_TabBarCenterButtonPositionBulge // 凸出一半
};

@interface WQ_TabBar : UITabBar

/**
 中间按钮
 */
@property (nonatomic, strong) UIButton *centerBtn;

/**
 中间按钮图片
 */
@property (nonatomic, strong) UIImage *centerImage;
/**
 中间按钮选中图片
 */
@property (nonatomic, strong) UIImage *centerSelectedImage;

/**
 中间按钮偏移量,两种可选，也可以使用centerOffsetY 自定义
 */
@property (nonatomic, assign) WQ_TabBarCenterButtonPosition position;

/**
 中间按钮偏移量，默认是居中
 */
@property (nonatomic, assign) CGFloat centerOffsetY;

/**
 中间按钮的宽和高，默认使用图片宽高
 */
@property (nonatomic, assign) CGFloat centerWidth, centerHeight;


@end

NS_ASSUME_NONNULL_END
