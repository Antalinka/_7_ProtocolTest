

#import <Foundation/Foundation.h>

@protocol GRSwimmers <NSObject>

@required
@property(nonatomic, assign) NSInteger speedSwim;
-(void) swim;

@optional
-(void) dive;
@end
