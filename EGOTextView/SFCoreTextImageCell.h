//
//  SFCoreTextImageCell.h
//  seafishing2
//
//  Created by zhaoyk10 on 14-4-1.
//  Copyright (c) 2014年 Szfusion. All rights reserved.
//

#import <Foundation/Foundation.h>

#define SFCoreTextImageAttributeKey         @"SFCoreTextImageAttributeKey"
#define SFCoreTextImagePlaceHolderString    @"\uFFFC"

@interface SFCoreTextImageCell : NSObject
@property (strong, nonatomic, readonly) UIImage *image;
@property (nonatomic) CGSize size;
@property (nonatomic) CGFloat descent;
@property (nonatomic) CGFloat ascent;
@property (strong, nonatomic, readonly) NSString *name;

+ (SFCoreTextImageCell *)cellWithName:(NSString *)name;

@end
