

#import <Foundation/Foundation.h>

@protocol GRJumpers <NSObject>

@required
@property(nonatomic, assign) NSInteger jumpDistance;
@property(nonatomic, assign) NSInteger jumpHeight;

-(void)jump;

@optional

-(NSInteger) acceleration;
@end
