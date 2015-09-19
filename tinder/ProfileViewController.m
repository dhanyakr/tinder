//
//  ProfileViewController.m
//  tinder
//
//  Created by Dhanya R on 9/18/15.
//  Copyright © 2015 Dhanya R. All rights reserved.
//

#import "ProfileViewController.h"



@interface ProfileViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *cardImageView;
@property (weak, nonatomic) IBOutlet UIImageView *navBarView2;
- (IBAction)onNavBarTapGEsture:(UITapGestureRecognizer *)sender;
@end

@implementation ProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

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

- (IBAction)onNavBarTapGEsture:(UITapGestureRecognizer *)sender {
        [self dismissViewControllerAnimated:YES completion:nil];
}
@end
