//
//  ZGProfileTool.h
//  Yeps
//
//  Created by weimi on 16/4/21.
//  Copyright © 2016年 weimi. All rights reserved.
//

#import <Foundation/Foundation.h>
@class UserInfoModel;
@interface ZGProfileTool : NSObject

+ (NSArray *)profileItems;

+ (NSArray *)profileSettingItems;

+ (UIImage *)profileBackImage;

+ (UIImage *)profileBackImageWithPhone:(NSString *)phone;

+ (void)popToUserStatusListViewController:(UserInfoModel *)userInfo nav:(UINavigationController *)nav;
@end
