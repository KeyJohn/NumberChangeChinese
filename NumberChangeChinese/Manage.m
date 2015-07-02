//
//  Manage.m
//  NumberChangeChinese
//
//  Created by keyzhang on 15/7/2.
//  Copyright © 2015年 keyzhang. All rights reserved.
//

#import "Manage.h"

@implementation Manage


//数字转中文小写
+ (NSString *)changeLowercaseChineseWithNumber:(NSNumber *)number
{
    NSString *str = [NSString stringWithFormat:@"%@", number];
    NSArray *arabic_numerals = @[@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"0"];
    NSArray *chinese_numerals = @[@"一",@"二",@"三",@"四",@"五",@"六",@"七",@"八",@"九",@"零"];
    NSArray *digits = @[@"个",@"十",@"百",@"千",@"万",@"十",@"百",@"千",@"亿",@"十",@"百",@"千",@"兆"];
    NSDictionary *dictionary = [NSDictionary dictionaryWithObjects:chinese_numerals forKeys:arabic_numerals];
    NSMutableArray *sums = [NSMutableArray array];
    for (int i = 0; i < str.length; i ++) {
        NSString *substr = [str substringWithRange:NSMakeRange(i, 1)];
        NSString *a = [dictionary objectForKey:substr];
        NSString *b = digits[str.length -i-1];
        NSString *sum = [a stringByAppendingString:b];
        if ([a isEqualToString:chinese_numerals[9]])
        {
            if([b isEqualToString:digits[4]] || [b isEqualToString:digits[8]])
                {
                    sum = b;
                    if ([[sums lastObject] isEqualToString:chinese_numerals[9]])
                    {
                        [sums removeLastObject];
                    }
                }else {
                    sum = chinese_numerals[9];
                }
            if ([[sums lastObject] isEqualToString:sum])
            {
                continue;
            }
        }
        [sums addObject:sum];
    }

    NSString *sumStr = [sums  componentsJoinedByString:@""];
    NSString *chinese = [sumStr substringToIndex:sumStr.length-1];

    return chinese;

}

//数字转中文大写
+ (NSString *)changeCapitalChineseWithNumber:(NSNumber *)number
{
    NSString *str = [NSString stringWithFormat:@"%@", number];
    NSArray *arabic_numerals = @[@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"0"];
    NSArray *chinese_numerals = @[@"壹",@"貳",@"叁",@"肆",@"伍",@"陆",@"柒",@"捌",@"玖",@"零"];
    NSArray *digits = @[@"个",@"拾",@"佰",@"仟",@"万",@"拾",@"佰",@"仟",@"亿",@"拾",@"佰",@"仟",@"兆"];
    NSDictionary *dictionary = [NSDictionary dictionaryWithObjects:chinese_numerals forKeys:arabic_numerals];
    NSMutableArray *sums = [NSMutableArray array];
    for (int i = 0; i < str.length; i ++) {
        NSString *substr = [str substringWithRange:NSMakeRange(i, 1)];
        NSString *a = [dictionary objectForKey:substr];
        NSString *b = digits[str.length -i-1];
        NSString *sum = [a stringByAppendingString:b];
        if ([a isEqualToString:chinese_numerals[9]])
        {
            if([b isEqualToString:digits[4]] || [b isEqualToString:digits[8]])
            {
                sum = b;
                if ([[sums lastObject] isEqualToString:chinese_numerals[9]])
                {
                    [sums removeLastObject];
                }
            }else {
                sum = chinese_numerals[9];
            }
            if ([[sums lastObject] isEqualToString:sum])
            {
                continue;
            }
        }
        [sums addObject:sum];
    }
    
    NSString *sumStr = [sums  componentsJoinedByString:@""];
    NSString *chinese = [sumStr substringToIndex:sumStr.length-1];
    
    return chinese;
    
    
}





@end
