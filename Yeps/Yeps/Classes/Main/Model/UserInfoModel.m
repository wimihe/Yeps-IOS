//
//  UserInfoModel.m
//  Yeps
//
//  Created by weimi on 16/3/6.
//  Copyright © 2016年 weimi. All rights reserved.
//

#import "UserInfoModel.h"

@implementation UserInfoModel

- (void)setIntro:(NSString *)intro {
    if (intro == nil || intro.length <= 0) {
        intro = @"Yeps 分享校园生活";
    }
    _intro = [intro copy];
}

+ (instancetype)initWithBaseModel:(UserBaseInfoModel *)baseInfo {
    UserInfoModel *userInfo = [[UserInfoModel alloc] init];
    userInfo.nick = baseInfo.nick;
    userInfo.user_sha1 = baseInfo.user_sha1;
    userInfo.photo = baseInfo.photo;
    userInfo.recommend_id = baseInfo.recommend_id;
    return userInfo;
}

@end
