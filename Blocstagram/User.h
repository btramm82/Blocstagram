//
//  User.h
//  Blocstagram
//
//  Created by BRIAN TRAMMELL on 2/23/15.
//  Copyright (c) 2015 Bloc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject <NSCoding>


@property (nonatomic, strong) NSString *idNumber;
@property (nonatomic, strong) NSString *userName;
@property (nonatomic, strong) NSString *fullName;
@property (nonatomic, strong) NSString *profilePictureURL;
@property (nonatomic, strong) NSString *profilePicture;

-(instancetype) initWithDictionary:(NSDictionary *)userDictionary;



@end
