//
//  GRFootballer.m
//  NW_5_array_student
//
//  Created by Exo-terminal on 2/28/14.
//  Copyright (c) 2014 Evgenia. All rights reserved.
//

#import "GRFootballer.h"

@implementation GRFootballer

-(NSString*) movement{
    return @"Футболист играет";
}
-(NSInteger) age{
    return 25;
}
-(NSString*) education{
    return @"university";
}

-(NSString*) description{
    return [NSString stringWithFormat:@"Name: %@,Weight:%2.1f, Height:%2.0f, Gender:%@, %@,%@,Year:%d,Education:%@\n", self.name, self.weight, self.height, self.gendern,super.movement, self.movement,self.age, self.education ];
}


#pragma mark - GRRunners

-(void) run{
    NSLog(@"%@ бежит", self.name);
}


@end


//@"Name: %@,Weight:%2.1f,Height:%2.0f,Gender:%@,%@ ", self.name, self.weight, self.height, self.gendern,self.movement