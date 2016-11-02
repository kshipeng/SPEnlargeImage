//
//  ViewController.m
//  SPEnlargeIamgeDemo
//
//  Created by 康世朋 on 2016/9/30.
//  Copyright © 2016年 康世朋. All rights reserved.
//

#import "ViewController.h"
#import "SPEnlargeIamge.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _tableView.tableFooterView = [UIView new];
    
    UIImageView *headrImage = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 200)];
    headrImage.image = [UIImage imageNamed:@"header.jpg"];
    SPEnlargeIamge *header = [[SPEnlargeIamge alloc]init];
    [header enlargeAddOnTableView:_tableView tebleHeaderView:headrImage];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 16;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    return [UITableViewCell new];
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    enlargeIamgePostTableContentOffSet_Y(scrollView.contentOffset.y);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
