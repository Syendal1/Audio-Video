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
    
    AVPlayerViewController *videoPlayerController;
    AVPlayer *videoPlayer;
    
}

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    colorView2=[[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    colorView2.backgroundColor=[UIColor purpleColor];
    [self.view addSubview:colorView2];
    
    UIButton *playVideoBtn=[[UIButton alloc]initWithFrame:CGRectMake(50, self.view.frame.size.height-200, 100, 100)];
    [playVideoBtn setTitle:@"Play Video" forState:UIControlStateNormal];
    playVideoBtn.backgroundColor=[UIColor greenColor];
    [colorView2 addSubview:playVideoBtn];
    [playVideoBtn addTarget:self action:@selector(playVideoMethod) forControlEvents:UIControlEventTouchUpInside];

    UIButton *stopVideoBtn=[[UIButton alloc]initWithFrame:CGRectMake(250, self.view.frame.size.height-200, 100, 100)];
    [stopVideoBtn setTitle:@"Stop Video" forState:UIControlStateNormal];
    stopVideoBtn.backgroundColor=[UIColor redColor];
    [colorView2 addSubview:stopVideoBtn];
    [stopVideoBtn addTarget:self action:@selector(stopVideoMethod) forControlEvents:UIControlEventTouchUpInside];

    NSString *videoPath = [[NSBundle mainBundle] pathForResource:@"FunnyVideo" ofType:@"mp4"];
    NSURL *videoStreamURL = [NSURL fileURLWithPath:videoPath];

    
    videoPlayer=[AVPlayer playerWithURL:videoStreamURL];
    videoPlayerController=[[AVPlayerViewController alloc]init];
    videoPlayerController.player=videoPlayer;
    videoPlayerController.view.frame=CGRectMake(0, 100, 400, 400);
    [colorView2 addSubview:videoPlayerController.view];
    
}

-(void)playVideoMethod{
  //  colorView2.backgroundColor=[UIColor yellowColor];
  
//    [mpVideoPlayer play];
    
    [videoPlayer play];
}

-(void)stopVideoMethod{
    //colorView2.backgroundColor=[UIColor blueColor];
  
   // [mpVideoPlayer pause];
    
    [videoPlayer pause];
    


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
