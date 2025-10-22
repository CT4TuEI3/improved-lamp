//
//  TextModel.h
//  ImprovedLamp
//
//  Created by CT4TuEI3 on 22.10.2025.
//

#import <Foundation/Foundation.h>

@interface TextModel : NSObject
@property (nonatomic, copy) NSString *text;
- (instancetype)initWithText:(NSString *)text;
@end
