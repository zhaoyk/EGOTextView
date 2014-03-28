//
//  EGOTextView_DemoViewController.m
//  EGOTextView_Demo
//
//  Created by Devin Doty on 4/18/11.
//  Copyright 2011 enormego. All rights reserved.
//

#import "EGOTextView_DemoViewController.h"
#import "EGOTextView.h"
#import "EGOEmojiAttachmentCell.h"

#import <QuartzCore/QuartzCore.h>

@implementation EGOTextView_DemoViewController

@synthesize egoTextView=_egoTextView;
@synthesize textView=_textView;

#pragma mark -
#pragma mark - View lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UISegmentedControl *segment = [[UISegmentedControl alloc] initWithItems:[NSArray arrayWithObjects:@"UITextView", @"EGOTextView", nil]];
    segment.segmentedControlStyle = UISegmentedControlStyleBar;
    [segment addTarget:self action:@selector(segmentChanged:) forControlEvents:UIControlEventValueChanged];
    self.navigationItem.titleView = segment;
    
    if (_textView==nil) {
        
        UITextView *textView = [[UITextView alloc] initWithFrame:self.view.bounds];
        textView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        textView.font = self.egoTextView.font;
        [self.view addSubview:textView];
        self.textView = textView;
        
    }
    
    if (_egoTextView==nil) {
        
        EGOTextView *view = [[EGOTextView alloc] initWithFrame:CGRectMake(10, 10, 300, 200)];
        view.backgroundColor = [UIColor colorWithWhite:0.9 alpha:1];
        view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        view.delegate = (id<EGOTextViewDelegate>)self;
        [self.view addSubview:view];
        self.egoTextView = view;
        [view becomeFirstResponder];
        
    }
     
    [segment setSelectedSegmentIndex:1];
    
    UIButton *left = [UIButton buttonWithType:UIButtonTypeContactAdd];
    [left addTarget:self action:@selector(btClick) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithCustomView:left];
    self.navigationItem.leftBarButtonItem = leftItem;
    
    UIButton *right = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    [right addTarget:self action:@selector(rbtClick) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithCustomView:right];
    self.navigationItem.rightBarButtonItem = rightItem;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return YES;
}


#pragma mark -
#pragma mark Actions

- (void)segmentChanged:(UISegmentedControl*)sender {
    
    if (sender.selectedSegmentIndex == 0) {
    
        self.egoTextView.hidden = YES;
        self.textView.hidden = NO;
        [self.textView becomeFirstResponder];
        
    } else {
                
        self.textView.hidden = YES;
        self.egoTextView.hidden = NO;
        [self.egoTextView becomeFirstResponder];
        
    }
    
}

- (void)btClick {
//    self.egoTextView.attributedString
    UIFont *font = self.egoTextView.font;
//    NSLog(@"pointSize: %f", font.pointSize);
//    NSLog(@"capHeight: %f", font.capHeight);
//    NSLog(@"lineHeight: %f", font.lineHeight);
//    NSLog(@"ascender: %f", font.ascender);
//    NSLog(@"descender: %f", font.descender);
//    NSLog(@"xHeight: %f", font.xHeight);
//    NSLog(@"leading: %f", font.leading);
    EGOEmojiAttachmentCell *cell = [EGOEmojiAttachmentCell cellWithName:@"emotion11"];
    cell.width = font.pointSize;
    cell.height = font.pointSize;
    cell.offsetY = ABS(font.descender * 0.5);
    [self.egoTextView addAttachmentCell:cell];
}

- (void)rbtClick {
    //    self.egoTextView.attributedString
    NSLog(@"%@", [self.egoTextView realString]);
}

#pragma mark -
#pragma mark EGOTextViewDelegate

- (BOOL)egoTextViewShouldBeginEditing:(EGOTextView *)textView {
    return YES;
}

- (BOOL)egoTextViewShouldEndEditing:(EGOTextView *)textView {
    return YES;
}

- (void)egoTextViewDidBeginEditing:(EGOTextView *)textView {
}

- (void)egoTextViewDidEndEditing:(EGOTextView *)textView {
}

- (void)egoTextViewDidChange:(EGOTextView *)textView {

}

- (void)egoTextView:(EGOTextView*)textView didSelectURL:(NSURL *)URL {
        
}


#pragma mark -
#pragma mark Memory Management

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];    
}

- (void)viewDidUnload {
    [super viewDidUnload];
}


@end
