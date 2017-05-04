//
//  UIImage+Extension.m
//  02-换肤
//
//  Created by 徐豪 on 2017/5/4.
//  Copyright © 2017年 syswin. All rights reserved.
//

#import "UIImage+Extension.h"
#import "Skin.h"

#import <objc/runtime.h>
//#import <objc/message.h>


@implementation UIImage (Extension)
+ (void)load
{
    //利用运行时来调换我们的方法
//    Method origalMethod = class_getClassMethod([UIImage class], @selector(imageNamed:));
//    Method MyMethod = class_getClassMethod([UIImage class], @selector(imageNamed:));
//    method_exchangeImplementations(origalMethod, MyMethod);
    
    Method origalMethod = class_getClassMethod([UIImage class], @selector(imageNamed:));
    
    Method myMethod  = class_getClassMethod([UIImage class], @selector(imageWithName:));
    
    method_exchangeImplementations(origalMethod,myMethod);

}
+ (UIImage *)imageWithName:(NSString *)imageName
{
    NSString *fullImageName = nil;
    SkinStyle currentStyle = [Skin currentStyle];
    switch (currentStyle) {
        case SkinStyleBlue:
            fullImageName = [NSString stringWithFormat:@"images/blue/%@",imageName];
            break;
        case SkinStyleRed:
            fullImageName = [NSString stringWithFormat:@"images/red/%@",imageName];
            break;
        case SkinStyleGreen:
            fullImageName = [NSString stringWithFormat:@"images/green/%@",imageName];
            break;
        default:
            break;
    }
    return [UIImage imageWithName:fullImageName];
}
@end
