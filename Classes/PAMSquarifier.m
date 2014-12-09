//
//  PAMSquarifier.m
//  Pods
//
//  Created by Thomas Sunde Nielsen on 09.12.14.
//
//

#import "PAMSquarifier.h"
#import <CoreGraphics/CoreGraphics.h>

@implementation PAMSquarifier

- (UIImage *)squarify {
    CGSize size = self.image.size;
    CGFloat width = size.width;
    CGFloat height = size.height;
    CGFloat squared = MAX(width, height);
    CGSize canvas = CGSizeMake(squared, squared);
    
    CGFloat xOffset = 0;
    if (width < squared)
        xOffset = (squared - width) / 2;
    CGFloat yOffset = 0;
    if (height < squared)
        xOffset = (squared - height) / 2;
    
    CGRect imagePosition = CGRectMake(xOffset, yOffset, width, height);
    
    UIGraphicsBeginImageContext(canvas);
    [[UIColor whiteColor] setFill];
    [[UIBezierPath bezierPathWithRect:CGRectMake(0, 0, canvas.width, canvas.height)] fill];
    [self.image drawInRect:imagePosition];
    UIImage *result = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return result;
}

@end
