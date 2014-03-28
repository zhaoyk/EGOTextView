//
//  EGOEmojiAttachmentCell.m
//  EGOTextView_Demo
//
//  Created by zhaoyk10 on 14-3-21.
//
//

#import "EGOEmojiAttachmentCell.h"

@interface EGOEmojiAttachmentCell()
@property (strong, nonatomic) NSString *name;
@end

@implementation EGOEmojiAttachmentCell

+ (EGOEmojiAttachmentCell *)cellWithName:(NSString *)name {
    EGOEmojiAttachmentCell *cell = [[EGOEmojiAttachmentCell alloc] init];
    cell.name = name;
    cell.image = [UIImage imageNamed:name];
    return cell;
}

- (NSString *)placeHolderString {
    return self.name;
}

@end
