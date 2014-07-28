
#import "GRRunner.h"

@implementation GRRunner

-(NSString*) movement{
    return @"Бегун бежит";
}


#pragma mark - GRRunners

-(void) run{
    
    NSLog(@"%@ все еще бежит ", self.name);
}

@end
