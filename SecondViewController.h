//
//  SecondViewController.h
//  DelegateMadness
//
//  Created by Natasha Murashev on 5/6/13.
//  Copyright (c) 2013 Natasha Murashev. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ColorDelegate.h"

@interface SecondViewController : UIViewController

@property (strong, nonatomic) id<ColorDelegate> delegate;

@end
