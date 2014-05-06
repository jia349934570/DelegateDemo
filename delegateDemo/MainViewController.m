//
//  MainViewController.m
//  delegateDemo
//
//  Created by 初心 on 14-5-4.
//  Copyright (c) 2014年 初心. All rights reserved.
//

#import "MainViewController.h"
#import "OtherViewController.h"
@interface MainViewController ()<OtherViewDelegate>
{
    NSString *_str;
}
@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.view.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _labelTwo = [[UITextField alloc]initWithFrame:CGRectMake(160, 200, 70, 44)];
    _labelTwo.backgroundColor = [UIColor grayColor];
    [self.view addSubview:_labelTwo];
    
    UIButton *buttonTow = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [buttonTow setTitle:@"推" forState:UIControlStateNormal];
    buttonTow.frame = CGRectMake(160,100, 70, 44);
    [self.view addSubview:buttonTow];
    [buttonTow addTarget:self action:@selector(tuiPush) forControlEvents:UIControlEventTouchUpInside];
}

- (void)tuiPush
{
    OtherViewController *view = [[OtherViewController alloc] init];
    view.delegate = self;
    [self.navigationController pushViewController:view animated:YES];
}

- (void)OtherViewLabel:(UITextField *)labelOne
{
    _labelTwo.text = labelOne.text;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
