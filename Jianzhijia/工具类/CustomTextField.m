//
//  CustomTextField.m
//  登录注册界面
//
//  Created by Humble lion on 15-6-20.
//  Copyright (c) 2015年 Humble lion. All rights reserved.
//

#import "CustomTextField.h"

@interface CustomTextField()
@property(retain,nonatomic)UILabel* placeholderLabel;
@property(retain,nonatomic)UIView* colorVC;

@end

@implementation CustomTextField

-(id)initWithFrame:(CGRect)frame
{
    if(self = [super initWithFrame:frame])
    {
        [super setDelegate:self];
        self.layer.masksToBounds = NO;
        
        
        
        
        
    }
    
    return self;
}

-(void)setDelegate:(id<UITextFieldDelegate>)delegate
{
    _backupDelegate = delegate;
    
}

-(void)setPlaceholder:(NSString *)placeholder
{
    if(_placeholderLabel == nil)
    {
        _placeholderLabel = [[UILabel alloc] init];
        _placeholderLabel.textColor  = [UIColor darkGrayColor];
        _placeholderLabel.textAlignment = NSTextAlignmentLeft;
        [self addSubview:_placeholderLabel];
        
        _colorVC = [[UIView alloc] initWithFrame:CGRectMake(0, _placeholderLabel.frame.size.height/2, _placeholderLabel.frame.size.width, _placeholderLabel.frame.size.height)];
        _colorVC.backgroundColor = _placeholderLabel.superview.superview. backgroundColor;
        [_placeholderLabel addSubview:_colorVC];
    }
    _placeholderLabel.text = placeholder;
    _placeholderLabel.textColor = [UIColor whiteColor];
    //_placeholderLabel.backgroundColor = [UIColor redColor];
    [_placeholderLabel sizeToFit];
    _placeholderLabel.frame = CGRectMake(0, 0, _placeholderLabel.frame.size.width, self.frame.size.height);
   // [_placeholderLabel sizeToFit];
}

-(void)rotaionProceView
{
    static int rotation = 3;
    static int count = 1;
    if(2*rotation - 1 > 1)
    {
        if(count == 1)
        {
            [UIView animateWithDuration:0.05 animations:^{
                _placeholderLabel.layer.transform = CATransform3DRotate( _placeholderLabel.layer.transform, ((float)rotation/180)*3.1415926, 0, 0, 1);
            } completion:^(BOOL finished) {
                count++;
                [self performSelector:@selector(rotaionProceView) withObject:_placeholderLabel afterDelay:0];
            }];
        }
        else
        {
            [UIView animateWithDuration:0.1 animations:^{
                if(count %2 == 0)
                    _placeholderLabel.layer.transform = CATransform3DRotate( _placeholderLabel.layer.transform, ((float)(-(2*rotation - 1))/180)*3.1415926, 0, 0, 1);
                else
                    _placeholderLabel.layer.transform = CATransform3DRotate( _placeholderLabel.layer.transform, ((float)(2*rotation - 1)/180)*3.1415926, 0, 0, 1);
            } completion:^(BOOL finished) {
                rotation --;
                count++;
                [self performSelector:@selector(rotaionProceView) withObject:_placeholderLabel afterDelay:0];
            }];
        }
    }
    else
    {
        [UIView animateWithDuration:0.05 animations:^{
            //_placeholderLabel.layer.transform = CATransform3DIdentity;
            _placeholderLabel.layer.transform = CATransform3DRotate( _placeholderLabel.layer.transform, ((float)(2*rotation - 1)/180)*3.1415926, 0, 0, 1);

            
        } completion:^(BOOL finished) {
            count = 1;
            rotation = 10;
        }];
    }
}


- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    
    if([_backupDelegate respondsToSelector:@selector(textFieldShouldBeginEditing:)])
    {
        return [_backupDelegate textFieldShouldBeginEditing:textField];
    }
    else
        return NO;
    
}
- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    if([_backupDelegate respondsToSelector:@selector(textFieldDidBeginEditing:)])
    {
        if(self.text == nil || [self.text isEqualToString:@""])
        //首先上升
            [UIView animateWithDuration:0.5 animations:^{
           // _placeholderLabel.layer.transform = CATransform3DMakeTranslation(0, -self.frame.size.height/2, 0);
                
            _placeholderLabel.layer.transform = CATransform3DTranslate(_placeholderLabel.layer.transform , 10, -self.frame.size.height/2, 0);
            _placeholderLabel.layer.transform = CATransform3DScale(_placeholderLabel.layer.transform , 0.95, 0.95, 1);

        }];
        
        
        return [_backupDelegate textFieldDidBeginEditing:textField];
    }

}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField
{
    if([_backupDelegate respondsToSelector:@selector(textFieldShouldEndEditing:)])
    {
        return [_backupDelegate textFieldShouldEndEditing:textField];
    }
    else
        return NO;

}
- (void)textFieldDidEndEditing:(UITextField *)textField
{
    if([_backupDelegate respondsToSelector:@selector(textFieldDidEndEditing:)])
    {
        if(self.text == nil || [self.text isEqualToString:@""])
        {
            [UIView animateWithDuration:0.5 animations:^{
                _placeholderLabel.layer.transform = CATransform3DIdentity;
            }];

        }
        return [_backupDelegate textFieldDidEndEditing:textField];
    }

}
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    if([_backupDelegate respondsToSelector:@selector(textField:shouldChangeCharactersInRange:replacementString:)])
    {
        return [_backupDelegate textField:textField shouldChangeCharactersInRange:range replacementString:string];
    }
    else
        return NO;
    

}
- (BOOL)textFieldShouldClear:(UITextField *)textField
{
    if([_backupDelegate respondsToSelector:@selector(textFieldShouldClear:)])
    {
        return [_backupDelegate textFieldShouldClear:textField];
    }
    else
        return NO;

}
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    if([_backupDelegate respondsToSelector:@selector(textFieldShouldReturn:)])
    {
        return [_backupDelegate textFieldShouldReturn:textField];
    }
    else
        return NO;

}


@end
