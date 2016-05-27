//
//  Book.m
//  Library
//
//  Created by tstone10 on 5/26/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import "Book.h"

@implementation Book

NSString * title;
NSString * author;
NSString * numOfPages;
NSString * isLentOut;

-(void)displayBookDetails {
    NSLog(@"Title: %@, Author: %@, Number of pages: %@, Lent out?: %@", _title, _author, _numOfPages, _isLentOut);
};

-(void) editBookDetails: (NSString *) title {
    
};

@end
