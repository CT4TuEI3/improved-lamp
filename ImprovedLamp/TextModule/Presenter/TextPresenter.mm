//
//  TextPresenter.m
//  ImprovedLamp
//
//  Created by CT4TuEI3 on 22.10.2025.
//

#import "TextPresenter.h"
#import "TextModel.h"
#import <string>
#import <algorithm>

class StringProcessor {
public:
    static std::string trim(const std::string& s) {
        auto start = s.find_first_not_of(" \n\t\r");
        auto end   = s.find_last_not_of(" \n\t\r");
        if (start == std::string::npos || end == std::string::npos)
            return "";
        return s.substr(start, end - start + 1);
    }
    
    static std::string toUpper(const std::string& s) {
        std::string out = s;
        std::transform(out.begin(), out.end(), out.begin(),
                       [](unsigned char c){ return std::toupper(c); });
        return out;
    }
    
    static std::string process(const std::string& input) {
        std::string trimmed = trim(input);
        return toUpper(trimmed);
    }
};

@interface TextPresenter ()
@property (nonatomic, weak) id<TextViewInput> view;
@property (nonatomic, strong) TextModel *model;
@end

@implementation TextPresenter

- (instancetype)initWithView:(id<TextViewInput>)view model:(TextModel *)model {
    if (self = [super init]) {
        _view = view;
        _model = model;
    }
    return self;
}

- (void)viewDidLoad {
    [self.view displayText:self.model.text ?: @""];
}

- (void)onSubmitTappedWithInput:(NSString *)input {
    std::string cppInput([input UTF8String]);
    
    std::string cppResult = StringProcessor::process(cppInput);
    
    NSString *result = [NSString stringWithUTF8String:cppResult.c_str()];
    self.model.text = result;
    
    [self.view displayText:self.model.text];
}

@end
