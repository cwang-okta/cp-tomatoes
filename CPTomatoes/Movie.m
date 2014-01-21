//
//  Movie.m
//  CodePathTomatoes
//
//  Created by Christine Wang on 1/15/14.
//  Copyright (c) 2014 Christine Wang. All rights reserved.
//

#import "Movie.h"

@interface Movie()

@property (nonatomic, strong) NSArray *abridged_cast;

@end

@implementation Movie

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        self.title = dictionary[@"title"];
        self.synopsis = dictionary[@"synopsis"];
        self.abridged_cast = dictionary[@"abridged_cast"];
        self.posterLinks = dictionary[@"posters"];
    }
    return self;
}

- (NSString *)cast {
    NSMutableString *castString = [[NSMutableString alloc] init];
    
    for (NSDictionary *member in self.abridged_cast) {
        if ([castString length] > 0) {
            [castString appendString:[NSString stringWithFormat:@", %@", [member objectForKey:@"name"]]];
        } else {
            [castString appendString:[member objectForKey:@"name"]];
        }
    }

    return castString;
}

@end
