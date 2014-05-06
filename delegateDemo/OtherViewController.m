//
//  OtherViewController.m
//  delegateDemo
//
//  Created by 初心 on 14-5-4.
//  Copyright (c) 2014年 初心. All rights reserved.
//

#import "OtherViewController.h"

@interface OtherViewController ()

@end

@implementation OtherViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _labelOne = [[UITextField alloc]initWithFrame:CGRectMake(160, 200, 70, 44)];
    _labelOne.backgroundColor = [UIColor grayColor];
//    _labelOne.text = @"21312";
    [self.view addSubview:_labelOne];
    
    UIButton *buttonOne = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [buttonOne setTitle:@"传递" forState:UIControlStateNormal];
    buttonOne.frame = CGRectMake(160,100, 70, 44);
    [self.view addSubview:buttonOne];
    [buttonOne addTarget:self action:@selector(delegateM) forControlEvents:UIControlEventTouchUpInside];
}

- (void)delegateM
{
    [_delegate OtherViewLabel:_labelOne];
    
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
