//
//  main.m
//  Library
//
//  Created by tstone10 on 5/26/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

/*
 Create a command-line program named LibraryApp that meets the following requirements:
 
 - Your program will be used to track the books a user owns
 - LibraryApp should include (2) custom classes: Library and Book
 - A Library should have an array of Book objects
 - A Book should have a title, an author, and a number of pages, as well as some way to indicate whether or not the book has been lent out
 - The user should be able to display all the details of a book
 - The user should be able to add a book to the library, delete a book from the library, edit an existing book, and view a list of all the books in the library
 - Should the method to display the details of a single book belong to the Library class, or to the Book class?
 - Should the methods to add, delete, edit, and view books belong to the Library class, or the Book class?
*/

#import "Library.h"
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Library *library = [[Library alloc]init];
        int num;
        
        [library initLibrary];
        
        [library addBook:@"Moby Dick" addAuthor:@"Herman Melville" addPages:@"1200"];
        [library addBook:@"Grapes of Wrath" addAuthor:@"John Steinbeck " addPages:@"464"];
        [library addBook:@"Of Mice and Men" addAuthor:@"John Steinbeck " addPages:@"187"];
        [library addBook:@"Diary of a Whimpy Kid" addAuthor:@"Jeff Kinney" addPages:@"213"];
        [library addBook:@"I Win!" addAuthor:@"U. Lose" addPages:@"1,000,000"];
        [library addBook:@"Robots" addAuthor:@"Anne Droid" addPages:@"100101"];
        
        while (num !=5) {
            
            printf("Welcome to the Library. What would you like to do? \n");
            printf("1. Display your library \n");
            printf("2. Add a Book \n");
            printf("3. Remove a book \n");
            printf("4. Edit a book \n");
            printf("5. Exit \n");
            
            scanf("%d", &num);
            printf("\n");
            
            if (num == 1) {
                [library listAllBooks];
            }
            else if (num == 2) {
                NSLog(@"Enter the new book title:");
                NSFileHandle *input1 = [NSFileHandle fileHandleWithStandardInput];
                NSData *inputData1 = [NSData dataWithData:[input1 availableData]];
                NSString *inputTitle = [[NSString alloc] initWithData:inputData1 encoding:NSUTF8StringEncoding];
                inputTitle = [inputTitle stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
                
                NSLog(@"Enter the new book Author:");
                NSFileHandle *input2 = [NSFileHandle fileHandleWithStandardInput];
                NSData *inputData2 = [NSData dataWithData:[input2 availableData]];
                NSString *inputAuthor = [[NSString alloc] initWithData:inputData2 encoding:NSUTF8StringEncoding];
                inputAuthor = [inputAuthor stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
                
                NSLog(@"Enter the number of pages in the new book:");
                NSFileHandle *input3 = [NSFileHandle fileHandleWithStandardInput];
                NSData *inputData3 = [NSData dataWithData:[input3 availableData]];
                NSString *inputPages = [[NSString alloc] initWithData:inputData3 encoding:NSUTF8StringEncoding];
                inputPages = [inputPages stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
                
                [library addBook:inputTitle addAuthor:inputAuthor addPages:inputPages];
            }
            else if (num == 3) {                
                [library removeBook];
            } else if (num == 4) {
                // editing? I don't think so...
            } else if (num == 5) {
                NSLog(@"Thank you for visiting the library!");
            }
        }
    }
    return 0;
}
