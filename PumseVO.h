//
//  PumseVO.h
//  iKwonDo
//
//  Created by David Wyss on 2012/04/4.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PumseVO : NSObject {
	NSString *name;
	NSString *vidName;
	NSString *vidType;
	NSInteger *beltId; // Not implemented yet.
	NSInteger *stripe;
}

@property (atomic, retain) NSString *name;
@property (atomic, retain) NSString *vidName;
@property (atomic, retain) NSString *vidType;
@property (nonatomic, assign) NSInteger *beltId;
@property (nonatomic, assign) NSInteger *stripe;

@end
