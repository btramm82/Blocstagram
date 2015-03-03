//
//  DataSource.h
//  Blocstagram
//
//  Created by BRIAN TRAMMELL on 2/23/15.
//  Copyright (c) 2015 Bloc. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Media;

typedef void (^NewItemCompletionBlock)(NSError *error);

@interface DataSource : NSObject

+(NSString *) instagramClientID;

+(instancetype) sharedInstance;

@property (nonatomic, strong, readonly) NSArray *mediaItems;
@property (nonatomic, strong, readonly) NSString *accessToken;

-(void)deleteMediaItem:(Media *)item;

-(void) requestNewItemsWithCompletionHandler:(NewItemCompletionBlock)completionHandler;
-(void) requestOldItemsWithCompletionHandler:(NewItemCompletionBlock)completionHandler;
-(void) downloadImageForMediaItem:(Media *)mediaItem;
-(void) toggleLikeOnMediaItem:(Media *)mediaItem;
-(void) commentOnMediaItem:(Media *)mediaItem withCommentText:(NSString *)commentText;
@end
