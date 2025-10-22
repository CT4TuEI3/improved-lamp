//
//  TextViewController.h
//  ImprovedLamp
//
//  Created by CT4TuEI3 on 22.10.2025.
//

#import <UIKit/UIKit.h>
#import "TextContracts.h"

@interface TextViewController : UIViewController <TextViewInput>
@property (nonatomic, strong) id<TextViewOutput> output;
@end
