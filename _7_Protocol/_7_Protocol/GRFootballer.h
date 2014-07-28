

#import "GRHuman.h"
#import "GRRunners.h"

@interface GRFootballer : GRHuman <GRRunners>

@property(nonatomic, assign) NSInteger runSpeed;
@property(nonatomic, assign) NSInteger numberOfWins;

-(NSInteger) age;
-(NSString*) education;

@end
