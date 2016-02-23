#import <Foundation/Foundation.h>

// Interface Section
@interface Fraction: NSObject

-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;
-(int) numerator;
-(int) denominator;

@end

//Implementation Section
@implementation Fraction
{
	int numerator;
	int denominator;
}
-(void) print {
{
	NSLog (@"i%/%i", numerator, denominator);
}
}

-(void) setNumerator:(int)n
{
	numerator = n;
}

-(void) setDenominator:(int)d
{
	denominator = d;
}
-(int) numerator
{
	return numerator;
}
-(int) denominator 
{
	return denominator;
}
@end

int main(int argc, char *argv[]) {
	@autoreleasepool {
		Fraction *myFraction = [[Fraction alloc] init];
		
		[myFraction setNumerator: 1];
		[myFraction setDenominator: 3];
		
		NSLog (@"The value of my fraction is: %i / %i",
		[myFraction numerator], [myFraction denominator]);
		
	}
}