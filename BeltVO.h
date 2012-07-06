//
//  BeltVO.h
//  iKwonDo
//
//  Created by David Wyss on 2012/04/5.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BeltVO : NSObject {
	NSInteger *identifier;
	NSString *name;
}

@property (atomic) NSInteger *identifier;
@property (atomic, retain) NSString *name;

@end
