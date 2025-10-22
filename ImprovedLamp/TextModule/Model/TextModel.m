//
//  TextModel.m
//  ImprovedLamp
//
//  Created by CT4TuEI3 on 22.10.2025.
//

#import "TextModel.h"

@implementation TextModel
- (instancetype)initWithText:(NSString *)text {
    if (self = [super init]) {
        _text = [text copy];
    }
    return self;
}
@end
