//
//  AppDelegate.h
//  JSPatchTest
//
//  Created by rimi on 2016/12/16.
//  Copyright © 2016年 rimi2. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

