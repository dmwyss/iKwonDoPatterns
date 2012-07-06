//
//  MydoViewController.h
//  iKwonDo
//
//  Created by David Wyss on 2012/04/4.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>
#import "MydoCellDataDAO.h"

@interface MydoViewController : UIViewController
<UITableViewDelegate, UITableViewDataSource>

{
    NSArray *aCellItems;
}

@property (nonatomic, retain) NSArray *aCellItems;

@end
