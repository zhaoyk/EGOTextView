//
//  EGOEmojiAttachmentCell.h
//  EGOTextView_Demo
//
//  Created by zhaoyk10 on 14-3-21.
//
//

#import <Foundation/Foundation.h>
#import "EGOTextView.h"

@interface EGOEmojiAttachmentCell : NSObject

@property (nonatomic) CGSize size;
@property (nonatomic) float descent;
@property (nonatomic) float ascent;
@property (strong, nonatomic) UIImage *image;

+ (EGOEmojiAttachmentCell *)cellWithName:(NSString *)name;
- (NSString *)placeHolderString;

@end
