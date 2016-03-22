//
//  ZGSwitchStatusTypeButton.m
//  Yeps
//
//  Created by weimi on 16/3/20.
//  Copyright © 2016年 weimi. All rights reserved.
//

#import "ZGSwitchStatusTypeButton.h"

@implementation ZGSwitchStatusTypeButton

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.titleLabel.font = [UIFont systemFontOfSize:14];
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
        [self setTitleColor:[UIColor popHighlightColor] forState:UIControlStateNormal];
        [self setTitleColor:[UIColor popColor] forState:UIControlStateHighlighted];
        self.imageView.contentMode = UIViewContentModeScaleAspectFill;
    }
    return self;
}

- (void)setType:(NSInteger)type {
    if (type < 0 || type > kTypeStrs.count) {
        type = 0;
    }
    _type = type;
    [self setTitle:kTypeStrs[type] forState:UIControlStateNormal];
    [self setImage:[UIImage imageNamed:@"LaunchImage"] forState:UIControlStateNormal];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    CGFloat maxW = kZGSwitchStatusTypeButtonW;
    CGFloat imageWH = 72;
    CGFloat labelH = 35;
    self.bounds = CGRectMake(0, 0, maxW, imageWH + labelH);
    self.imageView.frame = CGRectMake((maxW - imageWH) * 0.5, 0, imageWH, imageWH);
    self.imageView.layer.cornerRadius = imageWH * 0.5;
    self.imageView.clipsToBounds = YES;
    self.titleLabel.frame = CGRectMake(0, CGRectGetMaxY(self.imageView.frame), maxW, 30);
    
}

- (void)setHighlighted:(BOOL)highlighted{
    
}

@end