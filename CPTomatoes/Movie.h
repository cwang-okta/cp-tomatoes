//
//  Movie.h
//  CodePathTomatoes
//
//  Created by Christine Wang on 1/15/14.
//  Copyright (c) 2014 Christine Wang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Movie : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *synopsis;
@property (nonatomic, strong) NSString *cast;
@property (nonatomic, strong) NSDictionary *posterLinks;

- (id)initWithDictionary:(NSDictionary *)dictionary;

@end
