//
//  JZ_MainViewController.m
//  Jianzhijia
//
//  Created by Humble lion on 15-7-2.
//  Copyright (c) 2015年 Humble lion. All rights reserved.
//

#import "JZ_MainViewController.h"
#define RANDOM_COLOR [UIColor colorWithRed:(arc4random()%100)/(float)100 green:(arc4random()%100)/(float)100 blue:(arc4random()%100)/(float)100 alpha:0.3]

@interface JZ_MainViewController ()<UIScrollViewDelegate,UITableViewDataSource,UITableViewDelegate>
@property(retain,nonatomic)UITableView* tabelView;
@end

@implementation JZ_MainViewController
{
    UIView* animationView;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor darkGrayColor];
    
    _tabelView = [[UITableView alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, self.view.frame.size.height-100)];
    _tabelView.delegate = self;
    _tabelView.dataSource = self;
    [self.view addSubview:_tabelView];
    
    animationView = [[UIView alloc] initWithFrame:CGRectMake(self.view.frame.size.width-90, 100, 80, 40)];
    animationView.backgroundColor = [UIColor blackColor];
    [self.view addSubview:animationView];
    
    
    // Do any additional setup after loading the view.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 200;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString* cellID = @"reuser";
    UITableViewCell* cell = [tableView dequeueReusableHeaderFooterViewWithIdentifier:cellID];
    if(cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
        cell.textLabel.text = [NSString stringWithFormat:@"第%d个cell",(int)indexPath.row];
    }
    return cell;
    
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 80;
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    if((int)scrollView.contentOffset.y % 50 == 0)
        animationView.backgroundColor = RANDOM_COLOR;
    animationView.frame = CGRectMake(animationView.frame.origin.x,100+(self.view.frame.size.height - 100)*(scrollView.contentOffset.y/scrollView.contentSize.height) , animationView.frame.size.width, animationView.frame.size.height);
    
    animationView.alpha = 1;
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
