//
//  futureViewController.m
//  test_statusBar_color
//
//  Created by future on 16/8/16.
//  Copyright © 2016年 future. All rights reserved.
//

#import "futureViewController.h"

@interface futureViewController ()

@end

@implementation futureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /**
     创建提示label
     */
    UILabel *messageLabel = [[UILabel alloc] initWithFrame:CGRectInset(self.view.bounds, 20, 20)];
    messageLabel.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    messageLabel.text = @"需要在plist文件新增行View controller-based status bar appearance = NO(cmd+c cmd+v OK)；触摸画面后，切换状态条颜色";
    messageLabel.numberOfLines = 0;
    messageLabel.textAlignment = NSTextAlignmentCenter;
    messageLabel.textColor = [UIColor brownColor];
    messageLabel.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:messageLabel];
    
    
    self.navigationItem.prompt = @"看看状态栏的颜色变化";
    self.navigationItem.title = @"改变状态栏的颜色";
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    UIApplication *application = [UIApplication sharedApplication];
    
    // 切换模式
    if (application.statusBarStyle == UIStatusBarStyleDefault) {
        application.statusBarStyle = UIStatusBarStyleLightContent;
    }else {
        application.statusBarStyle = UIStatusBarStyleDefault;
    }
}




@end
