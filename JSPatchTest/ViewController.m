//
//  ViewController.m
//  JSPatchTest
//
//  Created by rimi on 2016/12/16.
//  Copyright © 2016年 rimi2. All rights reserved.
//

#import "ViewController.h"
#import <JPEngine.h>


@interface ViewController ()

@property (strong, nonatomic) IBOutlet UITextField *textfiled;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self getData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
- (IBAction)click:(UIButton*)sender {
    self.textfiled.text = @"点击了这个按钮";
}

- (void)getData{
    NSString *path = [[NSBundle mainBundle]pathForResource:@"JSPatch" ofType:@"json"];
    NSString *js = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
    [JPEngine startEngine];
    [JPEngine evaluateScript:js];
}

@end
