//
//  RZBaselineOffsetCell.m
//  manuscript
//
//  Created by Zev Eisenberg on 4/20/15.
//  Copyright (c) 2015 Zev Eisenberg. All rights reserved.
//

#import "RZBaselineOffsetCell.h"

#import <manuscript/RZManuscript.h>

@interface RZBaselineOffsetCell ()

@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation RZBaselineOffsetCell

+ (NSString *)title
{
    return @"Baseline Offset";
}

- (void)awakeFromNib
{
    [super awakeFromNib];

    RZManuscript *baseManuscript = RZManuscript.string(@"❤️");

    NSMutableArray *wave = [NSMutableArray array];

    for ( NSUInteger i = 0; i < 20; i++ ) {
        CGFloat offset = 15.0f * sin((i / 20.0f) * 7.0f * M_PI);
        [wave addObject:baseManuscript.baselineOffset(offset)];
    };

    self.label.attributedText = [RZManuscript joinManuscripts:wave withSeparator:nil];
}

@end