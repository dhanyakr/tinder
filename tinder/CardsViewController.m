//
//  CardsViewController.m
//  tinder
//
//  Created by Dhanya R on 9/18/15.
//  Copyright © 2015 Dhanya R. All rights reserved.
//

#import "CardsViewController.h"
#import "CaptionableImageView.h"
#import "ProfileViewController.h"


@interface CardsViewController () <ChildViewControllerDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *cardImageView;
@property CGPoint cardInitialCenter;
@end

@implementation CardsViewController
- (IBAction)onCardImageTapGesture:(UITapGestureRecognizer *)sender {
    NSLog(@"Tapping");
    
    ProfileViewController *vc = [[ProfileViewController alloc] init];
    vc.delegate = self;

    
    UINavigationController *nvc = [[UINavigationController alloc] initWithRootViewController:vc];
    [self presentViewController:nvc animated:YES completion:nil];

}
- (void)profileViewController:(ProfileViewController*)viewController
               didChooseValue:(CGFloat)value{
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)onCardImagePanGesture:(UIPanGestureRecognizer *)sender {
    CGPoint translation = [sender translationInView:sender.view];
    
    switch (sender.state) {
        case (UIGestureRecognizerStateBegan): {
            self.cardInitialCenter = self.cardImageView.center;
            NSLog(@"began");
            };
            break;
        case (UIGestureRecognizerStateChanged): {
            NSLog(@"changed");
            };
            break;
        case (UIGestureRecognizerStateEnded):{
            NSLog(@"ended");

            [UIView animateWithDuration:0.5 delay:0.5 usingSpringWithDamping:0.5 initialSpringVelocity:0.5
                                options:0 animations:^{
                                    //Animations
                                    self.cardImageView.center = CGPointMake(self.cardInitialCenter.x, self.cardInitialCenter.y + translation.y);
                                }
                             completion:^(BOOL finished) {
                                 //Completion Block
                             }];
        }
            break;
        default:
            break;
    };

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    UIPanGestureRecognizer *panRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(onCardImagePanGesture:)];
    [self.view addGestureRecognizer:panRecognizer];
    self.cardInitialCenter = self.cardImageView.center;
    
    
    CaptionableImageView *cv = [[CaptionableImageView alloc]initWithFrame:CGRectMake(0, 0, 300, 420)];
    [self.cardImageView addSubview:cv];
    
    
    // [cv release];//comment if u are using ARC

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
