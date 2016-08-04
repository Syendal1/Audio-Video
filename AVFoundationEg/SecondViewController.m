//
//  SecondViewController.m
//  AVFoundationEg
//
//  Created by SnehithNitin on 8/3/16.
//  Copyright © 2016 Snehith. All rights reserved.
//

#import "SecondViewController.h"
#import <AVFoundation/AVFoundation.h>

//#import <MediaPlayer/MediaPlayer.h>
#import <AVKit/AVKit.h>


@interface SecondViewController (){
    UIView *colorView2;
    
    AVPlayerViewController *videoPlayersController;
    AVPlayer *videoPlayers;
    
   // MPMoviePlayerController *videoPlayer;
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

//    NSString *videoPath = [[NSBundle mainBundle] pathForResource:@"VideoName" ofType:@"m4v"];
//    NSURL *videoStreamURL = [NSURL fileURLWithPath:videoPath];

                 //OR//

    NSURL *videoStreamURL=[NSURL URLWithString:@"http://qthttp.apple.com.edgesuite.net/1010qwoeiuryfg/sl.m3u8"];

    
//    videoPlayer=[[MPMoviePlayerController alloc]initWithContentURL:videoStreamURL];
//    videoPlayer.view.frame=CGRectMake(0, 10, colorView2.frame.size.width, 400);
//    [colorView2 addSubview:videoPlayer.view];
    
    videoPlayers=[[AVPlayer alloc]initWithURL:videoStreamURL];
    
//    videoPlayers.view.frame=CGRectMake(0, 10, colorView2.frame.size.width, 400);
//    videoPlayers.accessibilityFrame=CGRectMake(0, 0, 100, 100);
//    [colorView2 addSubview:videoPlayers.accessibilityFrame];
   
    
    //self->videoPlayersController.player=videoPlayers;
    
    //videoPlayersController.accessibilityFrame=CGRectMake(0, 0, 100, 100);
    //[colorView2 addSubview:videoPlayersController.view];
    
    
    
    
    
    
    
}

-(void)playVideoMethod{
    colorView2.backgroundColor=[UIColor yellowColor];
  
//    [videoPlayer play];
    
    [videoPlayers play];
}

-(void)stopVideoMethod{
    colorView2.backgroundColor=[UIColor blueColor];
  
    //[videoPlayer pause];
    
    [videoPlayers pause];
    


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
