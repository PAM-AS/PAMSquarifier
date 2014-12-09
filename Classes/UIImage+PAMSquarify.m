//
//  UIImage+PAMSquarify.m
//  Pods
//
//  Created by Thomas Sunde Nielsen on 09.12.14.
//
//

#import "UIImage+PAMSquarify.h"

@implementation UIImage (PAMSquarify)

- (UIImage *)squareRepresentation {
    CGFloat max = MAX(self.size.width, self.size.height);
    CGSize canvas = CGSizeMake(max, max);
    
    CGFloat xOffset = self.size.width < max ? (max - self.size.width) / 2 : 0;
    CGFloat yOffset = self.size.height < max ? (max - self.size.height) / 2 : 0;
    
    CGRect imagePosition = CGRectMake(xOffset, yOffset, self.size.width, self.size.height);
    
    UIGraphicsBeginImageContext(canvas);
    [[UIColor whiteColor] set];
    UIRectFill(CGRectMake(0, 0, canvas.width, canvas.height));
    [self drawInRect:imagePosition];
    UIImage *result = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return result;
}

@end
