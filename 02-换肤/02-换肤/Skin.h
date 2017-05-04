//
//  Skin.h
//  02-换肤
//
//  Created by 徐豪 on 2017/5/4.
//  Copyright © 2017年 syswin. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger,SkinStyle) {
    SkinStyleRed,
    SkinStyleGreen,
    SkinStyleBlue
};


@interface Skin : NSObject

+ (void)changeStyle:(SkinStyle)style;
+ (SkinStyle)currentStyle;

@end
