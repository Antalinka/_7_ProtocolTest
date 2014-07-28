
#import "GRAnimal.h"

@implementation GRAnimal

-(NSString*)movement{
    return @"Зверь спит";
}
-(NSString*)description{
    return [NSString stringWithFormat:@"Name: %@,Age:%d,%@ ", self.name, self.age,self.movement];
}

#pragma mark - GRJumpers

-(void) jump{
    NSLog(@"%@ прыгает", self.name);;
}
-(NSInteger) acceleration{
    return 2;
}

#pragma mark - GRSwimmers

-(void) swim{
    NSLog(@"%@ плывет",self.name);
}

-(void) dive{
    NSLog(@"%@ ныряет", self.name);
}

#pragma mark - GRRunners

-(void) run{
    NSLog(@"%@ бежит", self.name);
}

@end
