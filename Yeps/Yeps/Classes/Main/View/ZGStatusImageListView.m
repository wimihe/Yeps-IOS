//
//  ZGStatusImageListView.m
//  Yeps
//
//  Created by weimi on 16/3/8.
//  Copyright © 2016年 weimi. All rights reserved.
//

#import "ZGStatusImageListView.h"
#import "StatusModel.h"
#import "ZGImageView.h"
#import <UIImageView+WebCache.h>
#import "SDPhotoBrowser.h"

@interface ZGStatusImageListView()<SDPhotoBrowserDelegate>

@property (nonatomic, strong) NSMutableArray *imageViewList;

@end

@implementation ZGStatusImageListView

- (void)setStatus:(StatusModel *)status {
    _status = status;
    [self setNeedsLayout];
}

- (NSMutableArray *)imageViewList {
    if (_imageViewList == nil) {
        _imageViewList = [NSMutableArray array];
    }
    return _imageViewList;
}

+ (CGSize)sizeWithStatus:(StatusModel *)status {
    NSInteger count = status.image_list.count;
    if (count == 1) {
        return CGSizeMake(kBannerImageViewW, kBannerImageViewH);
    }
    CGFloat imageListViewW = kMaxW;
    if (count == 2) {
        return CGSizeMake(imageListViewW, kImageViewWH2);
    }
    if (count == 3) {
        return CGSizeMake(imageListViewW, kImageViewWH3 * 2 + kImageViewMargin);
    }
    if (count == 4) {
        return CGSizeMake(imageListViewW, kBannerImageViewH + kImageViewWH3 + kImageViewMargin);
    }
    if (count == 5) {
        return CGSizeMake(imageListViewW, kImageViewWH3 * 3 + kImageViewMargin * 2);
    }
    if (count == 6) {
        return CGSizeMake(imageListViewW, kImageViewWH2 + kImageViewMargin + kImageViewWH4);
    }
    if (count == 7) {
        return CGSizeMake(imageListViewW, 3 * kImageViewWH3 + 2 * kImageViewMargin);
    }
    if (count == 8) {
        return CGSizeMake(imageListViewW, 4 * kImageViewWH4 + 3 * kImageViewMargin);
    }
    CGFloat imageWH = kImageViewWH3;
    NSInteger col = ceil(count / 3.0);
    return CGSizeMake(imageListViewW, col * imageWH + (col - 1) * kImageViewMargin);
}

- (CGRect)frameWithCount:(NSInteger)count index:(NSInteger)index {
    if (count == 1) {
        return CGRectMake(kImageViewPadding, 0, kBannerImageViewW, kBannerImageViewH);
    }
    if (count == 2) {
        CGFloat imageWH = kImageViewWH2;
        CGFloat X = (imageWH + kImageViewMargin) * index + kImageViewPadding;
        return CGRectMake(X, 0, kImageViewWH2, kImageViewWH2);
    }
    if (count == 3) {
        CGFloat imageWH = kImageViewWH3;
        if (index == 0) {
            return CGRectMake(kImageViewPadding, 0, imageWH * 2, imageWH * 2 + kImageViewMargin);
        } else if(index == 1) {
            return CGRectMake(imageWH * 2 + kImageViewMargin + kImageViewPadding, 0, imageWH, imageWH);
        } else if(index == 2) {
            return CGRectMake(imageWH * 2 + kImageViewMargin + kImageViewPadding, imageWH + kImageViewMargin, imageWH, imageWH);
        }
    }
    if (count == 4) {
        if (index == 0) {
            return CGRectMake(kImageViewPadding, 0, kBannerImageViewW, kBannerImageViewH);
        } else {
            CGFloat imageWH = kImageViewWH3;
            CGFloat X = (index - 1) * (imageWH + kImageViewMargin) + kImageViewPadding;
            CGFloat Y = kBannerImageViewH + kImageViewMargin;
            return CGRectMake(X, Y, imageWH, imageWH);
        }
    }
    if (count == 5) {
        if (index < 3) {
            CGFloat imageWH = kImageViewWH3;
            CGFloat X = kImageViewPadding;
            CGFloat Y = index * (kImageViewWH3 + kImageViewMargin);
            return CGRectMake(X, Y, imageWH, imageWH);
        }
        CGFloat imageW = 2 * kImageViewWH3 + kImageViewMargin;
        CGFloat X = kImageViewWH3 + kImageViewMargin + kImageViewPadding;
        if (index == 3) {
            CGFloat imageH = kImageViewWH3;
            CGFloat Y = 2 * (kImageViewWH3 + kImageViewMargin);
            return CGRectMake(X, Y, imageW, imageH);
        }
        CGFloat imageH = kImageViewWH3 + kImageViewWH3 + kImageViewMargin;
        return CGRectMake(X, 0, imageW, imageH);
    }
    if (count == 6) {
        if (index <= 1) {
            CGFloat imageWH = kImageViewWH2;
            CGFloat X = kImageViewPadding + index * (imageWH + kImageViewMargin);
            return CGRectMake(X, 0, imageWH, imageWH);
        }
        CGFloat imageWH = kImageViewWH4;
        CGFloat X = kImageViewPadding + (index - 2) * (imageWH + kImageViewMargin);
        CGFloat Y = kImageViewWH2 + kImageViewMargin;
        return CGRectMake(X, Y, imageWH, imageWH);
    }
    if (count == 7) {
        CGFloat imageWH = kImageViewWH3;
        if (index == 1 || index == 6) {
            CGFloat X = imageWH + kImageViewMargin + kImageViewPadding;
            CGFloat Y = 0;
            if (index == 6) {
                Y = 2 * (imageWH + kImageViewMargin);
            }
            return CGRectMake(X, Y, imageWH * 2 + kImageViewMargin, imageWH);
        }
        if (index != 0) {
            index ++;
        }
        NSInteger num = 3;
        CGFloat X = (index % num) * (imageWH + kImageViewMargin) + kImageViewPadding;
        CGFloat Y = (index / num) * (imageWH + kImageViewMargin);
        return CGRectMake(X, Y, imageWH, imageWH);
        
    }
    if (count == 8) {
        CGFloat imageWH = kImageViewWH4;
        if (index < 4) {
            CGFloat X = kImageViewPadding;
            CGFloat Y = index * (imageWH + kImageViewMargin);
            return CGRectMake(X, Y, imageWH, imageWH);
        }
        if (index < 7) {
            CGFloat X = (index - 3) * (imageWH + kImageViewMargin) + kImageViewPadding;
            CGFloat Y = 3 * (imageWH + kImageViewMargin);
            return CGRectMake(X, Y, imageWH, imageWH);
        }
        CGFloat X = kImageViewPadding + imageWH + kImageViewMargin;
        CGFloat Y = 0;
        imageWH = kImageViewWH4 * 3 + 2 * kImageViewMargin;
        return CGRectMake(X, Y, imageWH, imageWH);
    }
    CGFloat imageWH = kImageViewWH3;
    NSInteger num = 3;
    CGFloat X = (index % num) * (imageWH + kImageViewMargin) + kImageViewPadding;
    CGFloat Y = (index / num) * (imageWH + kImageViewMargin);
    return CGRectMake(X, Y, imageWH, imageWH);
}

- (NSURL *)imageUrlWithUrlStr:(NSString *)urlStr {
    SDWebImageManager *mgr = [SDWebImageManager sharedManager];
    NSURL *url = [NSURL URLWithString:urlStr];
    //若内存中有大图 高清图片  则使用内存中的图片
    if ([[mgr imageCache] imageFromMemoryCacheForKey:[mgr cacheKeyForURL:url]]) {
        return url;
    }
    return [NSURL URLWithString:[NSString stringWithFormat:@"%@%@",urlStr, kIMAGESMALLURLENDFIX]];
}

- (void)imageViewClick:(UITapGestureRecognizer *)tap{
    NSInteger index = tap.view.tag;
    SDPhotoBrowser *browser = [[SDPhotoBrowser alloc] init];
    browser.sourceImagesContainerView = self;
    browser.imageCount = self.status.image_list.count;
    browser.currentImageIndex = index;
    browser.delegate = self;
    [browser show];
}

- (UIImage *)photoBrowser:(SDPhotoBrowser *)browser placeholderImageForIndex:(NSInteger)index {
    ZGImageView *imageView = [self.imageViewList objectAtIndex:index];
    return imageView.image;
}


- (NSURL *)photoBrowser:(SDPhotoBrowser *)browser highQualityImageURLForIndex:(NSInteger)index {
    NSString *url = [self.status.image_list objectAtIndex:index];
    return [NSURL URLWithString:url];
}


- (void)layoutSubviews {
    [super layoutSubviews];
    if (self.status) {
        NSInteger count = self.status.image_list.count;
        NSInteger index = 0;
        for (ZGImageView *imageView in self.imageViewList) {
            if (index < count) {
                imageView.hidden = NO;
                NSURL *url = [self imageUrlWithUrlStr:self.status.image_list[index]];
                [imageView sd_setImageWithURL:url placeholderImage:[UIImage imageNamed:@"placeholder"]];
                imageView.frame = [self frameWithCount:count index:index];
            } else {
                imageView.hidden = YES;
            }
            index++;
        }
        while (index < count) {
            
            ZGImageView *imageView = [[ZGImageView alloc] init];
            [self.imageViewList addObject:imageView];
            imageView.tag = index;
            imageView.userInteractionEnabled = YES;
            UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageViewClick:)];
            [imageView addGestureRecognizer:tap];
            
            NSURL *url = [self imageUrlWithUrlStr:self.status.image_list[index]];
            [imageView sd_setImageWithURL:url placeholderImage:[UIImage imageNamed:@"placeholder"]];
            imageView.frame = [self frameWithCount:count index:index];
            [self addSubview:imageView];
            index++;
        }
    }
}

@end
