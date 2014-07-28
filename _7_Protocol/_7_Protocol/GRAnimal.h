
#import <Foundation/Foundation.h>
#import "GRJumpers.h"
#import "GRSwimmers.h"
#import "GRRunners.h"

@interface GRAnimal : NSObject <GRJumpers, GRSwimmers, GRRunners>

@property(strong,nonatomic)NSString* name;
@property(assign, nonatomic)NSInteger age;
@property(nonatomic, assign) NSInteger jumpDistance;
@property(nonatomic, assign) NSInteger jumpHeight;
@property(nonatomic, assign) NSInteger speedSwim;
@property(nonatomic, assign) NSInteger runSpeed;

-(NSString*)movement;
-(void)jump;
-(void) swim;
-(void) run;

@end
