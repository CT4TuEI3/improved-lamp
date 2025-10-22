//
//  TextContracts.h
//  ImprovedLamp
//
//  Created by CT4TuEI3 on 22.10.2025.
//

#import <Foundation/Foundation.h>

@protocol TextViewInput <NSObject>
- (void)displayText:(NSString *)text;
@end

@protocol TextViewOutput <NSObject>
- (void)viewDidLoad;
- (void)onSubmitTappedWithInput:(NSString *)input;
@end
