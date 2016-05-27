//
//  Book.h
//  Library
//
//  Created by tstone10 on 5/26/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Book : NSObject

@property (nonatomic, strong) NSString * title;
@property (nonatomic, strong) NSString * author;
@property (nonatomic, strong) NSString * numOfPages;
@property (nonatomic, strong) NSString * isLentOut;

-(void) displayBookDetails;
-(void) editBookDetails: (NSString *) title;

@end
