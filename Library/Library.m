//
//  Library.m
//  Library
//
//  Created by tstone10 on 5/26/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import "Book.h"
#import "Library.h"

@implementation Library

NSMutableArray *libraryArray;
char inputBook[256];

-(void) initLibrary {
    libraryArray = [[NSMutableArray alloc] init];
};

-(void) listAllBooks {
    for (Book *book in libraryArray) {
        [book displayBookDetails];
    }
};

-(void) addBook: (NSString *) title addAuthor :(NSString *) author addPages :(NSString *) pages {
    Book *book = [[Book alloc]init];
    book.title = title;
    book.author = author;
    book.numOfPages = pages;
    book.isLentOut = @"no";
    [libraryArray addObject:book];
    NSLog(@"%@ was successfully added to the library.", title);
};

-(void) removeBook {
    
    NSLog(@"Enter the title of the book you wish to remove");
    NSFileHandle *input = [NSFileHandle fileHandleWithStandardInput];
    NSData *inputData = [NSData dataWithData:[input availableData]];
    NSString *inputString = [[NSString alloc] initWithData:inputData encoding:NSUTF8StringEncoding];
    inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    printf("\n");
    
    BOOL bookNotFound = true;
    for (Book *book in libraryArray) {
        if (book.title == inputString) {
            [libraryArray removeObject:book];
            bookNotFound = false;
        }
    }
    if (bookNotFound == true) {
        NSLog(@"'%@' was not found in the library.", inputString);
    }
};

@end
