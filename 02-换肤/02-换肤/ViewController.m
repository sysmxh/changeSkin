//
//  ViewController.m
//  02-换肤
//
//  Created by 徐豪 on 2017/5/4.
//  Copyright © 2017年 syswin. All rights reserved.
//

#import "ViewController.h"
#import "Skin.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *clubImageView;
@property (weak, nonatomic) IBOutlet UIImageView *circleImageView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.view.backgroundColor = [UIColor redColor];
     [Skin changeStyle:SkinStyleRed];
}
- (IBAction)redBtn:(id)sender {
    
    [Skin changeStyle:SkinStyleRed];
    
    [self setupImages];
}
- (IBAction)greenBtn:(id)sender {
    
    [Skin changeStyle:SkinStyleGreen];
    [self setupImages];
}
- (IBAction)blueBtn:(id)sender {
    [Skin changeStyle:SkinStyleBlue];
    [self setupImages];
}


- (void)setupImages{
   
    self.clubImageView.image = [UIImage imageNamed:@"club"];
    
    self.circleImageView.image = [UIImage imageNamed:@"circle"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
