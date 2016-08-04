//
//  FirstViewController.m
//  AVFoundationEg
//
//  Created by SnehithNitin on 8/3/16.
//  Copyright © 2016 Snehith. All rights reserved.
//

#include <AVFoundation/AVFoundation.h>
#import "FirstViewController.h"

@interface FirstViewController (){
    UIView *colorView1;
    AVAudioPlayer *player;
}
@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    colorView1=[[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    colorView1.backgroundColor=[UIColor purpleColor];
    [self.view addSubview:colorView1];
    
    UIButton *playAudioBtn=[[UIButton alloc]initWithFrame:CGRectMake(150, 100, 100, 100)];
    [playAudioBtn setTitle:@"Play Audio" forState:UIControlStateNormal];
    playAudioBtn.backgroundColor=[UIColor greenColor];
    [colorView1 addSubview:playAudioBtn];
    
    UIButton *stopAudioBtn=[[UIButton alloc]initWithFrame:CGRectMake(150, 350, 100, 100)];
    [stopAudioBtn setTitle:@"Stop Audio" forState:UIControlStateNormal];
    stopAudioBtn.backgroundColor=[UIColor redColor];
    [colorView1 addSubview:stopAudioBtn];
    
    [playAudioBtn addTarget:self action:@selector(playAudioMethod) forControlEvents:UIControlEventTouchUpInside];
    [stopAudioBtn addTarget:self action:@selector(stopAudioMethod) forControlEvents:UIControlEventTouchUpInside];
    ///**************//
    NSString *path = [[NSBundle mainBundle] pathForResource:@"SaturdaySong" ofType:@"mp3"];
    NSURL *soundURL = [NSURL fileURLWithPath:path];
    player = [[AVAudioPlayer alloc] initWithContentsOfURL:soundURL error:nil];
    ////////*********////
}

-(void)playAudioMethod{
    colorView1.backgroundColor=[UIColor yellowColor];
    [player prepareToPlay];
    [player play];
}

-(void)stopAudioMethod{
    colorView1.backgroundColor=[UIColor purpleColor];
    [player stop];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
