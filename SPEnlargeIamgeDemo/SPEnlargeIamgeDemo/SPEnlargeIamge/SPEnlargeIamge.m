//
//  SPEnlargeIamge.m
//  SPEnlargeIamgeDemo
//
//  Created by 康世朋 on 2016/9/30.
//  Copyright © 2016年 康世朋. All rights reserved.
//

#import "SPEnlargeIamge.h"

@interface SPEnlargeIamge ()<UITableViewDelegate>


@end
CGFloat imageH = 0;
UITableView *_tableView;
UIView *_bgView;

@implementation SPEnlargeIamge

- (void)enlargeAddOnTableView:(UITableView *)table tebleHeaderView:(UIImageView *)headerView {
    _tableView = table;
    _bgView = headerView;
    imageH = headerView.bounds.size.height;
    table.contentInset = UIEdgeInsetsMake(headerView.bounds.size.height, 0, 0, 0);
    _bgView.contentMode = UIViewContentModeScaleAspectFill;
    _bgView.clipsToBounds = YES;
    _bgView.userInteractionEnabled = YES;
    headerView.frame = CGRectMake(0, -headerView.bounds.size.height, headerView.bounds.size.width, headerView.bounds.size.height);
    [table addSubview:headerView];
    table.contentOffset = CGPointMake(0, -headerView.bounds.size.height);
}



@end
void enlargeIamgePostTableContentOffSet_Y(CGFloat y) {
    if (y < -imageH) {
        CGRect frame = _bgView.frame;
        frame.origin.y = y;
        frame.size.height = -y;
        _bgView.frame = frame;

    }
}

