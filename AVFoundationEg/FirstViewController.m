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
    
    
    UIToolbar *toolBar=[[UIToolbar alloc]initWithFrame:CGRectMake(0, self.view.frame.size.height-150, self.view.frame.size.width, 100)];
    [self.view addSubview:toolBar];
    
    UIBarButtonItem *play=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemPlay target:self action:@selector(playAudioMethod)];
    UIBarButtonItem *pause=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemPause target:self action:@selector(pauseAudioMethod)];
    UIBarButtonItem *stop=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemStop target:self action:@selector(stopAudioMethod)];
    UIBarButtonItem *flexibleSpace=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    
    [toolBar setItems:@[play,flexibleSpace,pause,flexibleSpace,stop]];

    ///**************//
    NSString *path = [[NSBundle mainBundle] pathForResource:@"SaturdaySong" ofType:@"mp3"];
    NSURL *soundURL = [NSURL fileURLWithPath:path];
    NSError *error;
    //NSLog(@"Audio File Path= %@",soundURL);
    player = [[AVAudioPlayer alloc] initWithContentsOfURL:soundURL error:&error];
    ////////*********////
    
}

-(void)playAudioMethod{
    colorView1.backgroundColor=[UIColor yellowColor];
    [player prepareToPlay];
    [player play];
}

-(void)pauseAudioMethod{
    colorView1.backgroundColor=[UIColor greenColor];
    [player pause];
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
