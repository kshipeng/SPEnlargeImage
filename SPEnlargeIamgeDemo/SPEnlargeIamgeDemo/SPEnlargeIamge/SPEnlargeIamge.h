//
//  SPEnlargeIamge.h
//  SPEnlargeIamgeDemo
//
//  Created by 康世朋 on 2016/9/30.
//  Copyright © 2016年 康世朋. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface SPEnlargeIamge : NSObject

- (void)enlargeAddOnTableView:(UITableView *)table tebleHeaderView:(UIImageView *)headerView;

void enlargeIamgePostTableContentOffSet_Y(CGFloat y);
@end

