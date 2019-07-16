//
//  ViewController.m
//  GitExample1
//
//  Created by Jalpa on 16/07/19.
//  Copyright © 2019 Jalpa. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"viewDidLoad");
    
    NSLog(@"reverseString of  Jalpa : %@", [self reverseString:@"Jalpa"]);
    // Do any additional setup after loading the view.
}

-(NSMutableString*)reverseString:(NSString *)original{
   
    NSMutableString *reversedStr;
    NSUInteger len = [original length];
    
    // Auto released string
    reversedStr = [NSMutableString stringWithCapacity:len];
    
    // Probably woefully inefficient...
    while (len > 0)
        [reversedStr appendString:
         [NSString stringWithFormat:@"%C", [original characterAtIndex:--len]]];
    
    return reversedStr;
    
}

@end
