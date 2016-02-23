#import <Foundation/Foundation.h>

// Interface Section
@interface Stats: NSObject

-(void) print;
-(void) setStyle: (int) s;
-(void) setGas: (int) g;
-(int) style;
-(int) gas;

@end

//Implementation Section
@implementation Stats
{
	int style;
	int gas;
}
-(void) print {
{
	NSLog (@"i%/%i", style, gas);
}
}

-(void) setStyle:(int)s
{
 	style = s;
}

-(void) setGas:(int)g
{
	gas = g;
}
-(int) style
{
	return style;
}
-(int) gas
{
	return gas;
}
@end

int main(int argc, char *argv[]) {
	@autoreleasepool {
	 	Stats *myStats = [[Stats alloc] init];
		
		[myStats setStyle:5];
		[myStats setGas:100];
		
		NSLog (@"The style of the car is: %i and your sas is at %i\nPrecent",
		[myStats style], [myStats gas]);
		
	}
}