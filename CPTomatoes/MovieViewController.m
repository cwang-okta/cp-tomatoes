//
//  MovieViewController.m
//  CPTomatoes
//
//  Created by Christine Wang on 1/20/14.
//  Copyright (c) 2014 Christine Wang. All rights reserved.
//

#import "MovieViewController.h"

@interface MovieViewController ()

@property (strong, nonatomic) IBOutlet UIImageView *movieImage;
@property (strong, nonatomic) IBOutlet UILabel *movieSynopsis;
@property (strong, nonatomic) IBOutlet UILabel *movieCast;

@end

@implementation MovieViewController

- (void)setup {
    // Custom initialization
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        [self setup];

    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setup];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = self.movie.title;
    self.movieSynopsis.text = self.movie.synopsis;
    self.movieCast.text = self.movie.cast;
    NSURL *movieImageURL = [NSURL URLWithString:[self.movie.posterLinks objectForKey:@"original"]];
    [self.movieImage setImageWithURL:movieImageURL];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
