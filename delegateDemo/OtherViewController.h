//
//  OtherViewController.h
//  delegateDemo
//
//  Created by 初心 on 14-5-4.
//  Copyright (c) 2014年 初心. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol OtherViewDelegate<NSObject>

- (void)OtherViewLabel:(UITextField *)labelOne;

@end

@interface OtherViewController : UIViewController

@property (nonatomic, retain) UITextField *labelOne;
@property (nonatomic, weak)id<OtherViewDelegate>delegate;
@end
