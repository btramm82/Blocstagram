//
//  LikeButton.h
//  Blocstagram
//
//  Created by BRIAN TRAMMELL on 3/2/15.
//  Copyright (c) 2015 Bloc. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef NS_ENUM(NSInteger, LikeState) {
    LikeStateNotLiked        =0,
    LikeStateLiking          =1,
    LikeStateLiked           =2,
    LikeStateUnliking        =3
};

@interface LikeButton : UIButton

// The Current state of the like button.  Setting to likeButtonNotLiked or LikeButtonLiked will display an empty heart or a heart. Setting to LikeButtonLiking or Unliking will display an activity indicator and disable button taps until the button is set to Liked or NotLiked.
@property (nonatomic, assign) LikeState likeButtonState;

@end
