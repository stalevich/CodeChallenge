//
//  CDCPendingButton.m
//  CodeChallenge
//
//  Created by Gurov O.K. on 26.05.16.
//  Copyright © 2016 ssp. All rights reserved.
//

#import "CDCPendingButton.h"

@interface CDCPendingButton ()

@property (strong, nonatomic) UIActivityIndicatorView *activityIndicator;

@end

@implementation CDCPendingButton

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self commonInit];
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    [self commonInit];
}

- (void)commonInit {
    self.layer.cornerRadius = 5.0;
    
    self.activityIndicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
    self.activityIndicator.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:self.activityIndicator];
    
    [self addConstraints:@[
                           [NSLayoutConstraint constraintWithItem:self.activityIndicator
                                                        attribute:NSLayoutAttributeTrailing
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:self.titleLabel
                                                        attribute:NSLayoutAttributeLeading
                                                       multiplier:1.0
                                                         constant:-10.0],
                           [NSLayoutConstraint constraintWithItem:self.activityIndicator
                                                        attribute:NSLayoutAttributeCenterY
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:self.titleLabel
                                                        attribute:NSLayoutAttributeCenterY
                                                       multiplier:1.0
                                                         constant:0.0],
                           ]];
}

- (void)setEnabled:(BOOL)enabled {
    [super setEnabled:enabled];
    self.alpha = enabled ? 1.0 : 0.5;
}

- (void)setPending:(BOOL)pending {
    _pending = pending;
    
    self.enabled = !pending;
    
    if (pending) {
        [self.activityIndicator startAnimating];
    } else {
        [self.activityIndicator stopAnimating];
    }
}

@end
