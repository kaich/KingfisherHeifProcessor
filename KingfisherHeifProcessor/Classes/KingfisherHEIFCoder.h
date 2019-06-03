//
//  KingfisherHEIFCoder.h
//  KingfisherHEIFCoder
//
//  Created by kai on 2019/6/3.
//

#import <UIKit/UIKit.h>
#import <Kingfisher/Kingfisher.h>

@interface KingfisherHEIFCoder: NSObject

- (UIImage *)decodedImageWithData:(NSData *)data;

- (BOOL)canDecodeFromData:(NSData *)data;

@end
