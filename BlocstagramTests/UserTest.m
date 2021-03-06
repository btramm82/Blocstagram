//
//  UserTest.m
//  Blocstagram
//
//  Created by BRIAN TRAMMELL on 3/4/15.
//  Copyright (c) 2015 Bloc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "User.h"

@interface UserTest : XCTestCase

@end

@implementation UserTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}


- (void)testThatInitializationWorks {
    
    NSDictionary *sourceDictionary = @{@"id": @"8675309", @"username" : @"d'oh", @"full_name" : @"Homer Simpson", @"profile_picture" : @"http://www.example.com/example.jpg"};
    
    User *testUser = [[User alloc] initWithDictionary:sourceDictionary];
    
    XCTAssertEqualObjects(testUser.idNumber, sourceDictionary[@"id"], @"The ID number should be equal");
    XCTAssertEqualObjects(testUser.userName, sourceDictionary[@"username"], @"The username should be equal");
    XCTAssertEqualObjects(testUser.fullName, sourceDictionary[@"full_name"], @"The full name should be equal");
    XCTAssertEqualObjects(testUser.profilePictureURL, [NSURL URLWithString:sourceDictionary[@"profile_picture"]], @"The profile picture should be equal");
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}



@end
