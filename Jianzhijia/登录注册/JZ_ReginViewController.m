//
//  JZ_ReginViewController.m
//  Jianzhijia
//
//  Created by Humble lion on 15-7-1.
//  Copyright (c) 2015年 Humble lion. All rights reserved.
//

#import "JZ_ReginViewController.h"
#import "CustomTextField.h"
#import "GlobalClass.h"
#import "JZ_MainViewController.h"
@interface JZ_ReginViewController ()<UITextFieldDelegate>

@end

@implementation JZ_ReginViewController
{
    CustomTextField* textField;
    CustomTextField* textField2;

}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpAudioBackgroundView];
    [self setUpResignAndLoginView];
    

}


-(void)setUpResignAndLoginView
{
    UIControl* fullControl = [[UIControl alloc] initWithFrame:self.view.bounds];
    [fullControl addTarget:self action:@selector(keyBoardDiasppear) forControlEvents:UIControlEventTouchUpInside];
    fullControl.backgroundColor = [UIColor blackColor];
    fullControl.alpha = 0.4;
    [self.view addSubview:fullControl];

    UIImageView *importImage = [[UIImageView alloc]initWithFrame:CGRectMake(20*V_SCALE,100, self.view.frame.size.width - 40*V_SCALE, 176/2*H_SCALE)];
    importImage.backgroundColor = [UIColor colorWithRed:255 green:255 blue:255 alpha:0.1];
    importImage.userInteractionEnabled = YES;
    importImage.layer.cornerRadius =2;
    [self.view addSubview:importImage];
    
    textField = [[CustomTextField alloc] initWithFrame:CGRectMake(5, 0, importImage.frame.size.width-10, importImage.frame.size.height/2)];
    textField.delegate = self;
    textField.textColor = [UIColor whiteColor];
    textField.placeholder = @"账号";
    [importImage addSubview:textField];
    
    UIView* line1 = [[UIView alloc] initWithFrame:CGRectMake(0, importImage.frame.size.height/2, importImage.frame.size.width, 0.5)];
    line1.backgroundColor = [UIColor colorWithRed:255 green:255 blue:255 alpha:0.2];
    [importImage addSubview:line1];
    
    textField2 = [[CustomTextField alloc] initWithFrame:CGRectMake(5, importImage.frame.size.height/2, importImage.frame.size.width, importImage.frame.size.height/2)];
    textField2.delegate = self;
    textField2.textColor = [UIColor whiteColor];
    textField2.placeholder = @"密码";
    [importImage addSubview:textField2];
    
    UIButton *logInButton = [[UIButton alloc]initWithFrame:CGRectMake(importImage.frame.origin.x, importImage.frame.origin.y+importImage.frame.size.height + 20*H_SCALE, self.view.frame.size.width - 40*V_SCALE, 88/2*H_SCALE)];
    [logInButton setTitle:@"登录" forState:UIControlStateNormal];
    logInButton.layer.masksToBounds = YES;
    logInButton.layer.borderWidth = 0.5;
    logInButton.layer.cornerRadius = 2;
    logInButton.backgroundColor= RGB2UIColor(255, 91, 96);
    logInButton.titleLabel.font = [UIFont fontWithName:@"Helvetica-Light" size:13*H_SCALE];
    [logInButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [logInButton addTarget:self action:@selector(landingToServer) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:logInButton];

}

-(void)setUpAudioBackgroundView
{
    
    NSURL  *mp4URL = [[NSBundle mainBundle] URLForResource:@"龙舟" withExtension:@"MOV"];
    NSLog(@"mp4URL = %@", mp4URL);
   ;
    _moviePlayerController = [[MPMoviePlayerController alloc] initWithContentURL:mp4URL];
    [_moviePlayerController setFullscreen:YES animated:NO];
    _moviePlayerController.allowsAirPlay = YES;//是否AirPlay
    [_moviePlayerController prepareToPlay];//准备好播放
    _moviePlayerController.scalingMode = MPMovieScalingModeAspectFill;
    _moviePlayerController.shouldAutoplay = YES;
    _moviePlayerController.repeatMode = MPMovieRepeatModeOne;
    _moviePlayerController.controlStyle = MPMovieControlStyleNone;
    
    _moviePlayerController.view.frame = CGRectMake(0, 0, self.view.frame.size.width , self.view.frame.size.height);
    [self.view addSubview:_moviePlayerController.view];
    


}
-(void)landingToServer
{
    NSLog(@"asdasd");
    [textField rotaionProceView];
    JZ_MainViewController* mainVC  = [[JZ_MainViewController alloc] init];
    [self presentViewController:mainVC animated:YES completion:nil];
    //执行动画效果
}
-(void)keyBoardDiasppear
{
    [textField resignFirstResponder];
    [textField2 resignFirstResponder];

}
- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    NSLog(@"asd");
    
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    return YES;
    
}
- (void)textFieldDidEndEditing:(UITextField *)textField
{
    NSLog(@"结束");
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField
{
    return YES;
}
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    return YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
