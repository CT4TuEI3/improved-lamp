//
//  TextModuleBuilder.m
//  ImprovedLamp
//
//  Created by CT4TuEI3 on 22.10.2025.
//

#import "TextModuleBuilder.h"
#import "TextViewController.h"
#import "TextPresenter.h"
#import "TextModel.h"

@implementation TextModuleBuilder

+ (UIViewController *)buildTextModule {
    TextViewController *vc = [[TextViewController alloc] init];
    TextModel *model = [[TextModel alloc] initWithText:@"Начальный текст"];
    TextPresenter *presenter = [[TextPresenter alloc] initWithView:vc model:model];
    vc.output = presenter;
    return vc;
}

@end
