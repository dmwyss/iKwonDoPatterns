//
//  MydoCellDataDAO.m
//  iKwonDo
//
//  Created by David Wyss on 2012/04/4.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MydoCellDataDAO.h"
#import "PumseVO.h"
@implementation MydoCellDataDAO

- (NSArray*) getData {
    NSArray *aDataOut;
	//aDataOut = [[NSArray alloc] initWithObjects:(id) @"Null", @"Eins", @"Zwei", @"Drei", @"Vier"
	//				, @"Funf", @"Sechs", @"Sieben", @"Acht", @"Neun", @"Zehn", nil];

	PumseVO *pum00 = [[PumseVO alloc] init];
	pum00.name = @"Kibon Pumse";
	pum00.vidName = @"TKD_06";
	pum00.vidType = @"m4v";
	
	PumseVO *pum01 = [[PumseVO alloc] init];
	pum01.name = @"Pumse Il";
	pum01.vidName = @"TKD_06";
	pum01.vidType = @"m4v";
	
	PumseVO *pum02 = [[PumseVO alloc] init];
	pum02.name = @"Pumse Ee";
	pum02.vidName = @"TKD_06";
	pum02.vidType = @"m4v";
	
	PumseVO *pum03 = [[PumseVO alloc] init];
	pum03.name = @"Pumse Sam";
	pum03.vidName = @"TKD_06";
	pum03.vidType = @"m4v";
	
	PumseVO *pum04 = [[PumseVO alloc] init];
	pum04.name = @"Pumse Sa";
	pum04.vidName = @"TKD_04";
	pum04.vidType = @"mov";
	
	PumseVO *pum05 = [[PumseVO alloc] init];
	pum05.name = @"Pumse Oh";
	pum05.vidName = @"TKD_06";
	pum05.vidType = @"m4v";
	
	PumseVO *pum06 = [[PumseVO alloc] init];
	pum06.name = @"Pumse Yuk";
	pum06.vidName = @"TKD_06";
	pum06.vidType = @"m4v";
	
	PumseVO *pum07 = [[PumseVO alloc] init];
	pum07.name = @"Pumse Chil";
	pum07.vidName = @"TKD_06";
	pum07.vidType = @"m4v";
	
	PumseVO *pum08 = [[PumseVO alloc] init];
	pum08.name = @"Pumse Pal";
	pum08.vidName = @"TKD_06";
	pum08.vidType = @"m4v";
	
	
	aDataOut = [[NSArray alloc] initWithObjects:(id) 
		pum00
		, pum01
		, pum02
		, pum03
		, pum04
		, pum05
		, pum06
		, pum07
		, pum08
		, nil];
	return aDataOut;
}
@end
