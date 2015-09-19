//
//  CaptionableImageView.m
//  tinder
//
//  Created by Dhanya R on 9/18/15.
//  Copyright © 2015 Dhanya R. All rights reserved.
//

#import "CaptionableImageView.h"
@interface CaptionableImageView ()
@property (strong, nonatomic) IBOutlet UIView *contentView;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIView *detailsView;
- (void) initSubviews;

@end

@implementation CaptionableImageView

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (id)initWithFrame:(CGRect)frame {
    if ((self = [super initWithFrame:frame])) {
        //UILabel *label = [[UILabel alloc] initWithFrame:label];
        //[self.contentView addSubview:self.detailsView];
        // [self.contentView addSubview:self.imageView];
        [self initSubviews];
    }
    return self;
}
-(id)initWithCoder:(NSCoder *)aDecoder{
    if ((self = [super initWithCoder:aDecoder])){
        [self addSubview:[[[NSBundle mainBundle] loadNibNamed:@"CaptionableImageView" owner:self options:nil] objectAtIndex:0]];
        [self initSubviews];
    }
    return self;
}
- (void) initSubviews{
    UINib *nib = [UINib nibWithNibName:@"CaptionableImageView" bundle:nil];
    [nib instantiateWithOwner:self options:nil];
    self.contentView.frame = self.bounds;
    self.imageView.layer.cornerRadius = 3;
    self.imageView.clipsToBounds = YES;
    [self addSubview:self.contentView];
 
}
- (void) layoutSubviews{
    [super layoutSubviews];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
