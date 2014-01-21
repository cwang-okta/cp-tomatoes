//
//  MovieCell.h
//  CodePathTomatoes
//
//  Created by Christine Wang on 1/15/14.
//  Copyright (c) 2014 Christine Wang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MovieCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *movieTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *synopsisLabel;
@property (weak, nonatomic) IBOutlet UILabel *castLabel;
@property (weak, nonatomic) IBOutlet UIImageView *movieImage;

@end
