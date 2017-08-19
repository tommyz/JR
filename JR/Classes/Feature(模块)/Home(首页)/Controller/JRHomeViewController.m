//
//  JRHomeViewController.m
//  JR
//
//  Created by Zj on 17/8/19.
//  Copyright © 2017年 Zj. All rights reserved.
//

#import "JRHomeViewController.h"
#import "JRGymInfoView.h"
#import "JRZoomCycleImgView.h"
#import "JRFitnessStatusView.h"
#import "JRGymClassTableView.h"

@interface JRHomeViewController ()
@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, strong) JRGymInfoView *gymInfoView;
@property (nonatomic, strong) JRZoomCycleImgView *zoomCycleImgView;
@property (nonatomic, strong) JRFitnessStatusView *fitnessStatusView;
@property (nonatomic, strong) JRGymClassTableView *gymClassTableView;
@property (nonatomic, strong) UILabel *statusTitle;
@property (nonatomic, strong) UILabel *classTitle;

@end

@implementation JRHomeViewController

#pragma mark - lifeCycle
- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = JRWhiteColor;
    
    [self setupScrollView];
    
    [self setupGymInfoView];
    
    [self setupZoomCycleImgView];
    
    [self setupFitnessStatusView];
    
    [self setupGymClassTableView];
}


#pragma mark - private
- (void)setupScrollView{
    _scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    _scrollView.showsVerticalScrollIndicator = NO;
    _scrollView.contentSize = CGSizeMake(JRScreenWidth, JRGymInfoViewHeight + JRZoomCycleImgViewHeight + JRHomeTitleHeight * 2 + JRFitnessStatusViewHeight + JRGymClassCellHeight * 3 + 14 * JRPadding);
    
    [self.view addSubview:_scrollView];
}


- (void)setupGymInfoView{
    _gymInfoView = [[JRGymInfoView alloc] initWithFrame:CGRectMake(0, 0, JRScreenWidth, JRGymInfoViewHeight)];
    _gymInfoView.backgroundColor = JRRandomColor;
    
    [_scrollView addSubview:_gymInfoView];
}


- (void)setupZoomCycleImgView{
    _zoomCycleImgView = [[JRZoomCycleImgView alloc] initWithFrame:CGRectMake(0, _gymInfoView.bottom + 3 * JRPadding, JRScreenWidth, JRZoomCycleImgViewHeight)];
    _zoomCycleImgView.backgroundColor = JRRandomColor;
    
    [_scrollView addSubview:_zoomCycleImgView];
}


- (void)setupFitnessStatusView{
    _statusTitle = [UILabel labelWithFrame:CGRectMake(JRPadding, _zoomCycleImgView.bottom + 3.5 * JRPadding, JRScreenWidth - 2 * JRPadding, JRHomeTitleHeight) text:@"健身情况" color:JRCommonTextColor font:JRCommonFont(JRCommonTextFontSize) textAlignment:NSTextAlignmentLeft];
    
    [_scrollView addSubview:_statusTitle];
    
    _fitnessStatusView = [[JRFitnessStatusView alloc] initWithFrame:CGRectMake(0, _statusTitle.bottom + JRPadding, JRScreenWidth, JRFitnessStatusViewHeight)];
    _fitnessStatusView.backgroundColor = JRRandomColor;
    
    [_scrollView addSubview:_fitnessStatusView];
}


- (void)setupGymClassTableView{
    _classTitle = [UILabel labelWithFrame:CGRectMake(JRPadding, _fitnessStatusView.bottom + 3.5 * JRPadding, JRScreenWidth - 2 * JRPadding, JRHomeTitleHeight) text:@"精品团课" color:JRCommonTextColor font:JRCommonFont(JRCommonTextFontSize) textAlignment:NSTextAlignmentLeft];
    
    [_scrollView addSubview:_classTitle];
    
    _gymClassTableView = [[JRGymClassTableView alloc] initWithFrame:CGRectMake(0, _classTitle.bottom + JRPadding, JRScreenWidth, JRGymClassCellHeight * 3 + JRPadding * 2)];
    _gymClassTableView.backgroundColor = JRRandomColor;
    
    [_scrollView addSubview:_gymClassTableView];
}


@end
