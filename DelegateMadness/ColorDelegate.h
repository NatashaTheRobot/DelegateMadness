//
//  ColorDelegate.h
//  DelegateMadness
//
//  Created by Natasha Murashev on 5/6/13.
//  Copyright (c) 2013 Natasha Murashev. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ColorDelegate <NSObject>

- (void)changeColor:(NSString *)colorName;
-(void) changeText:(NSString*)text;

@end
