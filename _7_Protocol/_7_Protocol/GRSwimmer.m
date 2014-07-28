

#import "GRSwimmer.h"

@implementation GRSwimmer
-(NSString*) movement{
    return @"Пловец плывет";
}

#pragma mark - GRSwimmers

-(void) swim{
    
  NSLog (@"%@ плавает",self.name);
}
@end
