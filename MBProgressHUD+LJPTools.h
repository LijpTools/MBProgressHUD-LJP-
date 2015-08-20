//
//  MBProgressHUD+LJPTools.h
//  TGProject
//
//  Created by lijunping on 15/8/19.
//  Copyright (c) 2015年 TG. All rights reserved.
//

#import "MBProgressHUD.h"

#define MBP_IMAGE [UIImage imageNamed:[NSString stringWithFormat:@"MBProgressHUD.bundle/%@", icon]]
#define MBP_ERROR_IMAGE @"error.png"
#define MBP_SUCCESS_IMAGE @"success.png"

@interface MBProgressHUD (LJPTools)
/**
 *  显示不带状态的信息
 *
 *  @param message 显示信息
 *  @param view    指定显示信息的view
 */
+ (void)showNormalMessage:(NSString *)message toView:(UIView *)view;
/**
 *  显示不带状态的信息
 *
 *  @param message 显示信息
 */
+ (void)showNormalMessage:(NSString *)message;
/**
 *  显示成功信息提示框
 *
 *  @param success 成功信息
 *  @param view    指定显示信息的view
 */
+ (void)showSuccess:(NSString *)success toView:(UIView *)view;
/**
 *  显示失败信息提示框
 *
 *  @param success 失败信息
 *  @param view    指定显示信息的view
 */
+ (void)showError:(NSString *)error toView:(UIView *)view;
/**
 *  显示消息提示框
 *
 *  @param message 消息
 *  @param view    指定显示信息的view
 *
 *  @return 提示框
 */
+ (MBProgressHUD *)showMessage:(NSString *)message toView:(UIView *)view;
/**
 *  显示成功信息提示框
 *
 *  @param success 成功信息
 */
+ (void)showSuccess:(NSString *)success;
/**
 *  显示失败信息提示框
 *
 *  @param success 失败信息
 */
+ (void)showError:(NSString *)error;
/**
 *  显示消息提示框
 *
 *  @param message 消息
 *
 *  @return 提示框
 */
+ (MBProgressHUD *)showMessage:(NSString *)message;
/**
 *  隐藏提示框
 */
+ (void)hideHUD;

@end
