//
//  Library.h
//  Library
//
//  Created by tstone10 on 5/26/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Library : NSObject

@property(nonatomic, strong) NSMutableArray *books;

-(void) initLibrary;
-(void) listAllBooks;
-(void) addBook: (NSString *) title addAuthor :(NSString *) author addPages :(NSString *) pages;
-(void) removeBook;

@end
