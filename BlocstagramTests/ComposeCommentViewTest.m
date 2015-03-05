//
//  ComposeCommentViewTest.m
//  Blocstagram
//
//  Created by BRIAN TRAMMELL on 3/4/15.
//  Copyright (c) 2015 Bloc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "ComposeCommentView.h"

@interface ComposeCommentViewTest : XCTestCase

@end

@implementation ComposeCommentViewTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

-(void) testThatCommentIsWritingComment {
    
    ComposeCommentView *composeComment = [[ComposeCommentView alloc] init];
    composeComment.text = @"Something is writing";
    XCTAssertTrue(composeComment.isWritingComment == YES, @"There is an error in the comment section");
}

-(void) testThatCommentIsNotWritingComment {

    ComposeCommentView *composeComment = [[ComposeCommentView alloc] init];
    composeComment.text = nil;
    XCTAssertTrue(composeComment.isWritingComment == NO, @"There is an error in the comment section");
}

@end
