
#import "GRCat.h"

@implementation GRCat
-(NSString*)movement{
    return @"Кот мурчит";
}

#pragma mark - GRJumpers

-(void) jump{
   NSLog(@"%@ прыгает", self.name);
}
@end
