//
//  TextViewController.m
//  ImprovedLamp
//
//  Created by CT4TuEI3 on 22.10.2025.
//

#import "TextViewController.h"

@interface TextViewController ()
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UITextField *textField;
@property (nonatomic, strong) UIButton *submitButton;
@end

@implementation TextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    self.navigationItem.title = @"Objective-C++ Demo";
    
    [self setupViews];
    [self setupConstraints];
    [self.output viewDidLoad];
}

- (void)setupViews {
    self.titleLabel = [[UILabel alloc] init];
    self.titleLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.titleLabel.font = [UIFont boldSystemFontOfSize:22];
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    self.titleLabel.text = @"...";
    [self.view addSubview:self.titleLabel];
    
    self.textField = [[UITextField alloc] init];
    self.textField.translatesAutoresizingMaskIntoConstraints = NO;
    self.textField.borderStyle = UITextBorderStyleRoundedRect;
    self.textField.placeholder = @"Введите текст";
    [self.view addSubview:self.textField];
    
    self.submitButton = [UIButton buttonWithType:UIButtonTypeSystem];
    self.submitButton.translatesAutoresizingMaskIntoConstraints = NO;
    [self.submitButton setTitle:@"Отправить" forState:UIControlStateNormal];
    [self.submitButton addTarget:self
                          action:@selector(onSubmit)
                forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.submitButton];
}

- (void)setupConstraints {
    UILayoutGuide *g = self.view.safeAreaLayoutGuide;
    
    [NSLayoutConstraint activateConstraints:@[
        [self.titleLabel.topAnchor constraintEqualToAnchor:g.topAnchor constant:60],
        [self.titleLabel.leadingAnchor constraintEqualToAnchor:g.leadingAnchor constant:16],
        [self.titleLabel.trailingAnchor constraintEqualToAnchor:g.trailingAnchor constant:-16],
        
        [self.textField.topAnchor constraintEqualToAnchor:self.titleLabel.bottomAnchor constant:20],
        [self.textField.leadingAnchor constraintEqualToAnchor:g.leadingAnchor constant:16],
        [self.textField.trailingAnchor constraintEqualToAnchor:g.trailingAnchor constant:-16],
        
        [self.submitButton.topAnchor constraintEqualToAnchor:self.textField.bottomAnchor constant:20],
        [self.submitButton.centerXAnchor constraintEqualToAnchor:g.centerXAnchor],
    ]];
}

- (void)onSubmit {
    [self.output onSubmitTappedWithInput:self.textField.text ?: @""];
}

- (void)displayText:(NSString *)text {
    self.titleLabel.text = text;
}

@end
