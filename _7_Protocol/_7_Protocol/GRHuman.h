
#import <Foundation/Foundation.h>

@interface GRHuman : NSObject

@property(strong, nonatomic) NSString* name;
@property(assign,nonatomic) CGFloat height;
@property(assign,nonatomic) CGFloat weight;
@property(strong,nonatomic) NSString* gendern;

-(NSString*)movement;
@end
