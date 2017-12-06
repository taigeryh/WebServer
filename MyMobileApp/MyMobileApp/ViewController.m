//
//  ViewController.m
//  MyMobileApp
//
//  Created by taiyh on 2017/12/6.
//  Copyright © 2017年 taiyh. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


/*
 10.2.11.240:3000 是本机localhost
 */

- (IBAction)get:(id)sender {
    NSString * URL = @"http://10.2.11.240:3000/test/get";
    [[AFHTTPSessionManager manager] GET:URL parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"GET res:%@",responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
    }];
}


- (IBAction)post:(id)sender {
    NSString * URL = @"http://10.2.11.240:3000/test/post";
    [[AFHTTPSessionManager manager] POST:URL parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"POST res:%@",responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
