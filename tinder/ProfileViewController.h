//
//  ProfileViewController.h
//  tinder
//
//  Created by Dhanya R on 9/18/15.
//  Copyright © 2015 Dhanya R. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ChildViewControllerDelegate;

@interface ProfileViewController : UIViewController
@property (nonatomic, weak) id<ChildViewControllerDelegate> delegate;
@end

@protocol ChildViewControllerDelegate <NSObject>

- (void)profileViewController:(ProfileViewController*)viewController
               didChooseValue:(CGFloat)value;

@end