//
//  MydoViewController.m
//  iKwonDo
//
//  Created by David Wyss on 2012/04/4.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MydoViewController.h"
#import "PumseVO.h"

@interface MydoViewController ()

@end

@implementation MydoViewController

@synthesize aCellItems;

#pragma mark - View Lifecycle.

- (void)viewDidLoad
{
	[super viewDidLoad];
	MydoCellDataDAO *mcd = [[MydoCellDataDAO alloc] init];
	aCellItems = [mcd getData];
	//aCellItems = [[NSArray alloc] initWithObjects:(id) @"Eins", @"Zwei", @"Drei", @"Vier"
	//              , @"Funf", @"Sechs", @"Sieben", @"Acht", @"Neun", @"Zehn", nil];
}

- (void)viewDidUnload
{
	[super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark - TableView Methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return [aCellItems count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	// Step 1 - See if possible to reuse cell that has just rolled off the screen.
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
	// Step 2 - if no reusable, create new.
	if (cell == nil){
		cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
	}
    
	// Step 3 - Add detail view accessory
	//cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
    
	// Step 4 - Set the cell text.
	// Good simple version from String cell.textLabel.text = [aCellItems objectAtIndex:indexPath.row];
	PumseVO *pumTemp = [aCellItems objectAtIndex:indexPath.row];
	cell.textLabel.text = pumTemp.name;
   
	// Step 5 - Return the cell
	return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	NSLog(@"Pressed ROW %d", [indexPath row]);
	
	PumseVO *pumTemp = [aCellItems objectAtIndex:[indexPath row]];
	
	NSLog(@"looked up %@", pumTemp.name);
	
	//NSString *path = [[NSBundle mainBundle] pathForResource:@"TKD_06" ofType:@"m4v"];
	NSString *path = [[NSBundle mainBundle] pathForResource:pumTemp.vidName ofType:pumTemp.vidType];
	NSURL *url = [NSURL fileURLWithPath:path];
	
	//MPMoviePlayerController *player = [[MPMoviePlayerController alloc] initWithContentURL:url];
	//player.scalingMode = MPMovieScalingModeFill;
	//[player play];
	
	MPMoviePlayerViewController *moviePlayer = [[MPMoviePlayerViewController alloc] initWithContentURL:url];
	[self presentMoviePlayerViewControllerAnimated:moviePlayer];
}

//DEselect - (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath {
//	NSLog(@"Pressed ROW %d", [indexPath row]);
//}


@end
