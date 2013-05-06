//
//  SecondViewController.m
//  DelegateMadness
//
//  Created by Natasha Murashev on 5/6/13.
//  Copyright (c) 2013 Natasha Murashev. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

- (IBAction)colorAction:(UIButton *)button;

@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)colorAction:(UIButton *)button
{
    [self.delegate changeColor:button.currentTitle];
    [self.delegate changeText:button.currentTitle];
}
@end
