//
//  TextPresenter.h
//  ImprovedLamp
//
//  Created by CT4TuEI3 on 22.10.2025.
//

#import <Foundation/Foundation.h>
#import "TextContracts.h"

@class TextModel;

@interface TextPresenter : NSObject <TextViewOutput>
- (instancetype)initWithView:(id<TextViewInput>)view model:(TextModel *)model;
@end
