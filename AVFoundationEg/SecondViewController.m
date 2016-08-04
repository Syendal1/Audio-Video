//
//  SecondViewController.m
//  AVFoundationEg
//
//  Created by SnehithNitin on 8/3/16.
//  Copyright © 2016 Snehith. All rights reserved.
//

#import "SecondViewController.h"
#import <AVFoundation/AVFoundation.h>
#import <AVKit/AVKit.h>


@interface SecondViewController (){
    UIView *colorView2;
    AVPlayer *avPlayer;
    AVPlayerViewController *avPlayerViewController;
}

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    colorView2=[[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    colorView2.backgroundColor=[UIColor purpleColor];
    [self.view addSubview:colorView2];
    
    UIButton *playVideoBtn=[[UIButton alloc]initWithFrame:CGRectMake(150, 100, 100, 100)];
    [playVideoBtn setTitle:@"Play Video" forState:UIControlStateNormal];
    playVideoBtn.backgroundColor=[UIColor greenColor];
    [colorView2 addSubview:playVideoBtn];
    [playVideoBtn addTarget:self action:@selector(playVideoMethod) forControlEvents:UIControlEventTouchUpInside];
    
//    NSString *path = [[NSBundle mainBundle] pathForResource:@"VideoFileName" ofType:@"mp4"];
//    NSURL *videoURL = [NSURL fileURLWithPath:path];

//    avPlayer=[AVPlayer playerWithURL:videoURL];
//    avPlayerViewController.player=avPlayer;

    
}

//-(void)playVideoMethod{
//    colorView2.backgroundColor=[UIColor yellowColor];
//    [self presentViewController:avPlayerViewController animated:true completion:^{
//        //[avPlayerViewController player];
//        //[self avPlayerViewController.player.play ];
//        //avPlayerViewController.player.play();
//    }];
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
