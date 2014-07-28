

#import "GRLion.h"

@implementation GRLion
-(NSString*)movement{
    return @"Лев рычит";
}

#pragma mark - GRRunners

-(void) run{
    NSLog(@"%@ бежит", self.name);
}
@end
