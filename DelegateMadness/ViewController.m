//
//  ViewController.m
//  DelegateMadness
//
//  Created by Natasha Murashev on 5/6/13.
//  Copyright (c) 2013 Natasha Murashev. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()
{
    SecondViewController *secondViewController;
    __weak IBOutlet UILabel *textLabel;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    secondViewController = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
    secondViewController.delegate = self;
    
    [self.view addSubview:secondViewController.view];
    
    secondViewController.view.center = self.view.center;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)changeColor:(NSString *)colorName
{
        
    NSString *colorMethodName = [[colorName lowercaseString] stringByAppendingString:@"Color"];
    SEL colorNameSelector = NSSelectorFromString(colorMethodName);
    self.view.backgroundColor = [UIColor performSelector:colorNameSelector];

}

- (void)changeText:(NSString *)text
{
    textLabel.text = text;
}

@end
