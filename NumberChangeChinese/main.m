//
//  main.m
//  NumberChangeChinese
//
//  Created by keyzhang on 15/7/2.
//  Copyright © 2015年 keyzhang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Manage.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        //test！！
        NSString *capital = [Manage changeCapitalChineseWithNumber:@410011526];
        NSString *lowercase = [Manage changeLowercaseChineseWithNumber:@410011526];
        NSLog(@"capital is %@", capital);
        NSLog(@"lowercase is %@", lowercase);
        
    }
    return 0;
}
