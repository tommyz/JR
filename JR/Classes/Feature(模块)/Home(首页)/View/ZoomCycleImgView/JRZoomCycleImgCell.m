//
//  LTZoomCycleImgCell.m
//  旅途逸居
//
//  Created by 张骏 on 17/5/5.
//  Copyright © 2017年 武汉国扬科技有限公司. All rights reserved.
//

#import "JRZoomCycleImgCell.h"

@interface JRZoomCycleImgCell()

@end

@implementation JRZoomCycleImgCell

#pragma mark ---lifeCycle---
- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        
        self.backgroundColor = [UIColor clearColor];
        
        [self setupSubViews];
    }
    return self;
}


#pragma mark ---private---
- (void)setupSubViews{
    _imgView = [[UIImageView alloc] initWithFrame:self.bounds];
    _imgView.contentMode = UIViewContentModeScaleToFill;
    _imgView.layer.shadowColor = JRColor(41, 102, 92).CGColor;
    _imgView.layer.shadowOpacity = 0.2;
    _imgView.layer.shadowOffset = CGSizeMake(0, 4);
    
    [self.contentView addSubview:_imgView];
}

@end
