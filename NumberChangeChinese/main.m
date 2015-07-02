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
        NSNumber *num = @123004234;
        NSString *capital = [Manage changeCapitalChineseWithNumber:num];
        NSString *lowercase = [Manage changeLowercaseChineseWithNumber:num];
        NSLog(@"capital is %@", capital);
        NSLog(@"lowercase is %@", lowercase);
        
    }
    return 0;
}
