//
//  EGOEmojiAttachmentCell.h
//  EGOTextView_Demo
//
//  Created by zhaoyk10 on 14-3-21.
//
//

#import <Foundation/Foundation.h>
#import "EGOTextView.h"

@interface EGOEmojiAttachmentCell : NSObject<EGOTextAttachmentCell>

@property (nonatomic) float width;
@property (nonatomic) float height;
@property (nonatomic) float offsetY;

+ (EGOEmojiAttachmentCell *)cellWithName:(NSString *)name;

@end
