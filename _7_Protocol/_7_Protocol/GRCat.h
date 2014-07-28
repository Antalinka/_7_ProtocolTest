
#import "GRAnimal.h"
#import "GRJumpers.h"


@interface GRCat : GRAnimal <GRJumpers>

@property(nonatomic, assign) NSInteger jumpDistance;
@property(nonatomic, assign) NSInteger jumpHeight;

-(void)jump;

@end
