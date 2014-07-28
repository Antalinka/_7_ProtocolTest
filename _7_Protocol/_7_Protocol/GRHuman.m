

#import "GRHuman.h"

@implementation GRHuman

-(NSString*) movement{
    return @"Человек идет";
 }
-(NSString*) description{
    return [NSString stringWithFormat:@"Name: %@,Weight:%2.0f,Height:%2.1f,Gender:%@,%@ ", self.name, self.weight, self.height, self.gendern,self.movement];
   }
@end
