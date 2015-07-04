//
//  CustomTextField.h
//  登录注册界面
//
//  Created by Humble lion on 15-6-20.
//  Copyright (c) 2015年 Humble lion. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTextField : UITextField<UITextFieldDelegate>
{
    id _backupDelegate;

}

-(void)rotaionProceView;

@end
