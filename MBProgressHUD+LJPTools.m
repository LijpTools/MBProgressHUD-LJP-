//
//  MBProgressHUD+LJPTools.m
//  TGProject
//
//  Created by lijunping on 15/8/19.
//  Copyright (c) 2015年 TG. All rights reserved.
//

#import "MBProgressHUD+LJPTools.h"



@implementation MBProgressHUD (LJPTools)
#pragma mark - 显示带图片信息
+ (void)show:(NSString *)text icon:(NSString *)icon view:(UIView *)view
{
    if (view == nil) view = [[UIApplication sharedApplication].windows lastObject];
    // 快速显示一个提示信息
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.labelText = text;
    // 设置图片
    hud.customView = [[UIImageView alloc] initWithImage:MBP_IMAGE];
    // 再设置模式
    hud.mode = MBProgressHUDModeCustomView;
    // 隐藏时候从父控件中移除
    hud.removeFromSuperViewOnHide = YES;
    
    // 1秒之后再消失
    [hud hide:YES afterDelay:1.0];
}

#pragma mark - 显示信息
+ (void)show:(NSString *)text view:(UIView *)view
{
    if (view == nil) {
        view = [[UIApplication sharedApplication].windows lastObject];
    }
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    //设置显示内容
    hud.labelText = text;
    //设置模式
    hud.mode = MBProgressHUDModeText;
    //隐藏时从父控件移除
    hud.removeFromSuperViewOnHide = YES;
    //设置消失时间
    [hud hide:YES afterDelay:1.0f];
}
/**
 *  显示不带状态的信息
 *
 *  @param message 显示信息
 *  @param view    指定显示信息的view
 */
+ (void)showNormalMessage:(NSString *)message toView:(UIView *)view{
    [self show:message view:view];
}
/**
 *  显示不带状态的信息
 *
 *  @param message 显示信息
 */
+ (void)showNormalMessage:(NSString *)message{
    [self showNormalMessage:message toView:nil];
}
/**
 *  显示成功信息提示框
 *
 *  @param success 成功信息
 *  @param view    指定显示信息的view
 */
+ (void)showSuccess:(NSString *)success toView:(UIView *)view
{
    [self show:success icon:MBP_SUCCESS_IMAGE view:view];
    
}
/**
 *  显示失败信息提示框
 *
 *  @param success 失败信息
 *  @param view    指定显示信息的view
 */
+ (void)showError:(NSString *)error toView:(UIView *)view
{
    [self show:error icon:MBP_ERROR_IMAGE view:view];
}
/**
 *  显示消息提示框
 *
 *  @param message 消息
 *  @param view    指定显示信息的view
 *
 *  @return 提示框
 */
+ (MBProgressHUD *)showMessage:(NSString *)message toView:(UIView *)view
{
    if (view == nil) {
        view = [[UIApplication sharedApplication].windows lastObject];
    }
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    //设置显示内容
    hud.labelText = message;
    //隐藏时从父控件移除
    hud.removeFromSuperViewOnHide = YES;
    //设置是否需要蒙版效果
    hud.dimBackground = YES;
    
    return hud;
}
/**
 *  显示成功信息提示框
 *
 *  @param success 成功信息
 */
+ (void)showSuccess:(NSString *)success
{
    [self showSuccess:success toView:nil];
}
/**
 *  显示失败信息提示框
 *
 *  @param success 失败信息
 */
+ (void)showError:(NSString *)error
{
    [self showError:error toView:nil];
}
/**
 *  显示消息提示框
 *
 *  @param message 消息
 *
 *  @return 提示框
 */
+ (MBProgressHUD *)showMessage:(NSString *)message
{
    return [self showMessage:message toView:nil];
}
/**
 *  隐藏提示框
 */
+ (void)hideHUD
{
    [self hideHUDForView:nil animated:YES];
}
@end
