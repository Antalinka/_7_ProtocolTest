//
//  AppDelegate.m
//  _7_Protocol
//
//  Created by Exo-terminal on 3/11/14.
//  Copyright (c) 2014 Evgenia. All rights reserved.
//

#import "AppDelegate.h"
#import "GRHuman.h"
#import "GRRunner.h"
#import "GRSwimmer.h"
#import "GRWheelman.h"
#import "GRFootballer.h"
#import "GRAnimal.h"
#import "GRCat.h"
#import "GRLion.h"
#import "GRSnake.h"
#import "GRJumpers.h"
#import "GRRunner.h"
#import "GRSwimmer.h"
#import "GRRunners.h"
#import "GRSwimmers.h"
#import "GRRunners.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    GRRunner* runner1 = [[GRRunner alloc]init];
    GRSwimmer* swimmer1 = [[GRSwimmer alloc]init];
    GRWheelman* wheelman1 = [[GRWheelman alloc]init];
    GRFootballer* footballer1 = [[GRFootballer alloc]init];
    GRHuman* human1 = [[GRHuman alloc]init];
    
    human1.name = @"Den";
    human1.height = 1.7f;
    human1.weight = 67.f;
    human1.gendern = @"Male";
    
    runner1.name = @"Rayan";
    runner1.height = 1.8f;
    runner1.weight = 80.f;
    runner1.gendern = @"Male";
    runner1.runSpeed = 5;
    
    swimmer1.name = @"Anna";
    swimmer1.height = 1.65f;
    swimmer1.weight = 56.f;
    swimmer1.gendern = @"Female";
    swimmer1.speedSwim = 6;
    
    wheelman1.name = @"Lisa";
    wheelman1.height = 1.5f;
    wheelman1.weight = 60.0f;
    wheelman1.gendern = @"Female";
    
    footballer1.name = @"Daniel";
    footballer1.height = 1.9f;
    footballer1.weight = 78.f;
    footballer1.gendern = @"Male";
    footballer1.runSpeed = 4;
    footballer1.numberOfWins = 17;
    
    
    GRAnimal* animal1 = [[GRAnimal alloc]init];
    GRCat* cat1 = [[GRCat alloc]init];
    GRSnake* snake1 = [[GRSnake alloc]init];
    GRLion* lion1 = [[GRLion alloc]init];
    
    animal1.name = @"Aves";
    animal1.age = 3;
    animal1.runSpeed = 5;
    animal1.speedSwim = 6;
    animal1.jumpDistance = 300;
    animal1.jumpHeight = 80;
    
    cat1.name = @"Tima";
    cat1.age = 6;
    cat1.jumpHeight = 5;
    cat1.jumpDistance = 100;
    
    
    snake1.name = @"Zuli";
    snake1.age = 4;
    
    lion1.name = @"Leo";
    lion1.age = 8;
    lion1.runSpeed = 5;
    
    
    NSArray* allArray = [NSArray arrayWithObjects:animal1,human1,cat1,runner1,snake1,lion1,swimmer1, wheelman1,footballer1,nil];
   
   
    for (id  <GRRunners,GRJumpers,GRSwimmers> obj in allArray) {
        
        if (![obj conformsToProtocol:@protocol(GRJumpers)]&& ![obj conformsToProtocol:@protocol(GRSwimmers)]&& ![obj conformsToProtocol:@protocol(GRRunners)]) {
                NSLog(@"Это ленивец");
        }
        else{
            if ([obj conformsToProtocol:@protocol(GRRunners)]) {
                id <GRRunners> runner = obj;
                [runner run];
                NSLog(@"Cкорость бега %d",runner.runSpeed);
                if ([obj respondsToSelector:@selector(numberOfWins)]) {
                         id <GRRunners> runner = obj;
                        NSLog(@"Победил %d раз ",runner.numberOfWins);
                }
                NSLog(@"\n");
            }
            if([obj conformsToProtocol:@protocol(GRSwimmers)]){
                id <GRSwimmers> swimmer = obj;
                NSLog(@"Cкорость %d",swimmer.speedSwim);
                [swimmer swim];
                if ([obj respondsToSelector:@selector(dive)]) {
                    id <GRSwimmers> swimmer = obj;
                    [swimmer dive];
                }
                NSLog(@"\n");
            }
            if( [obj conformsToProtocol:@protocol(GRJumpers)]){
                id <GRJumpers> jumper = obj;
                NSLog(@"Расстояние %d",jumper.jumpDistance);
                NSLog(@"Высота %d",jumper.jumpHeight);
                [jumper jump];
                if([obj respondsToSelector:@selector(acceleration)]){
                     NSLog(@"Ускорение %d",jumper.acceleration);
                }
                NSLog(@"\n");
            }
        }
    }
    
    return YES;
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
