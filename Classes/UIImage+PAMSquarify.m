//
//  UIImage+PAMSquarify.m
//  Pods
//
//  Created by Thomas Sunde Nielsen on 09.12.14.
//
//

#import "UIImage+PAMSquarify.h"

@implementation UIImage (PAMSquarify)

- (UIImage *)squarify {
    CGFloat squared = MAX(self.size.width, self.size.height);
    CGSize canvas = CGSizeMake(squared, squared);
    
    CGFloat xOffset = self.size.width < squared ? (squared - self.size.width) / 2 : 0;
    CGFloat yOffset = self.size.height < squared ? (squared - self.size.height) / 2 : 0;
    
    CGRect imagePosition = CGRectMake(xOffset, yOffset, self.size.width, self.size.height);
    
    UIGraphicsBeginImageContext(canvas);
    [[UIColor whiteColor] setFill];
    [[UIBezierPath bezierPathWithRect:CGRectMake(0, 0, canvas.width, canvas.height)] fill];
    [self drawInRect:imagePosition];
    UIImage *result = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return result;
}

@end
