//
//  Skin.m
//  02-换肤
//
//  Created by 徐豪 on 2017/5/4.
//  Copyright © 2017年 syswin. All rights reserved.
//

#import "Skin.h"

static SkinStyle _style;

@implementation Skin
+ (void)changeStyle:(SkinStyle)style
{
    _style = style;
}
+(SkinStyle)currentStyle
{
    return _style;
}
@end
