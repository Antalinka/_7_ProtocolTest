

#import <Foundation/Foundation.h>


@protocol GRRunners <NSObject>

@required
@property(nonatomic, assign) NSInteger runSpeed;
-(void) run;

@optional
@property(nonatomic, assign) NSInteger numberOfWins;

@end
