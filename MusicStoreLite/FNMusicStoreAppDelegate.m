//
//  FNMusicStoreAppDelegate.m
//  MusicStoreLite
//
//  Created by Takao Funami on 12/07/23.
//  Copyright (c) 2012年 Recruit. All rights reserved.
//

#import "FNMusicStoreAppDelegate.h"
#import "FNMusicPlayManager.h"

@implementation FNMusicStoreAppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
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

#pragma mark -
#pragma mark Remote-control event handling
// Respond to remote control events
// リモコンからのイベントをここで、キャッチして、FNMusicPlayManagerにおくります。
// シミュレーターでは効果が出ない？
// http://stackoverflow.com/questions/3203928/ios4-background-audio-with-iphone-simulator?rq=1
// iOS4 - Background audio with iPhone Simulatorとか参考にしたら、でるかも知れないが、試してないです。実機ではうごきました。

- (void) remoteControlReceivedWithEvent: (UIEvent *) receivedEvent {
    
    [[FNMusicPlayManager sharedManager] remoteControlReceivedWithEvent:receivedEvent];
}

@end
