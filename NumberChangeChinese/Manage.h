//
//  Manage.h
//  NumberChangeChinese
//
//  Created by keyzhang on 15/7/2.
//  Copyright © 2015年 keyzhang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Manage : NSObject

+ (NSString *)changeLowercaseChineseWithNumber:(NSNumber *)number;

+ (NSString *)changeCapitalChineseWithNumber:(NSNumber *)number;

@end
