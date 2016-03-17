//
//  ViewController.m
//  JokeGenerator
//
//  Created by Ashikul Islam Tamal on 3/17/16.
//  Copyright © 2016 Ashikul Islam Tamal. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)jokeButton:(id)sender {
    NSString *fileContents = [[NSBundle mainBundle] pathForResource:@"JokeList" ofType:@"plist"];
    NSDictionary *wordDIC = [[NSDictionary alloc] initWithContentsOfFile:fileContents];
    
    NSMutableArray *items = [wordDIC valueForKey:@"Jokes"];
    int RandomJoke = arc4random() % [items count];
    NSString *word = [items objectAtIndex:RandomJoke];
    [self.Label setText:[[NSString alloc] initWithFormat:@"%@", word]];
}
@end
