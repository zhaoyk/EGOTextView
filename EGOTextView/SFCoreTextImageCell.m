//
//  SFCoreTextImageCell.m
//  seafishing2
//
//  Created by zhaoyk10 on 14-4-1.
//  Copyright (c) 2014年 Szfusion. All rights reserved.
//

#import "SFCoreTextImageCell.h"

@interface SFCoreTextImageCell()
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) UIImage *image;
@end

@implementation SFCoreTextImageCell
+ (SFCoreTextImageCell *)cellWithName:(NSString *)name {
    SFCoreTextImageCell *cell = [[SFCoreTextImageCell alloc] init];
    cell.image = [UIImage imageNamed:name];
    cell.name = name;
    return cell;
}
@end
