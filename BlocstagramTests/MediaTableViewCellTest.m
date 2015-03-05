//
//  MediaTableViewCellTest.m
//  Blocstagram
//
//  Created by BRIAN TRAMMELL on 3/4/15.
//  Copyright (c) 2015 Bloc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Media.h"
#import "MediaTableViewCell.h"
#import "ComposeCommentView.h"

@interface MediaTableViewCellTest : XCTestCase

@end

@implementation MediaTableViewCellTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

-(void) testThatInitialzationWorks {
    ComposeCommentView *height = [[ComposeCommentView alloc] init];
    Media *imageItems = [[Media alloc] init];
    CGFloat newImageSize = [MediaTableViewCell heightForMediaItem:imageItems width:320];
    
    XCTAssertTrue(newImageSize == CGRectGetHeight(height.frame), @"The height is incorrect");
}
@end
