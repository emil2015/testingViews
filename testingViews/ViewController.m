//
//  ViewController.m
//  testingViews
//
//  Created by emil on 11/15/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"
#import "Grid.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UIView *mainView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.mainView.backgroundColor = [UIColor greenColor];
    

    
    CGRect  viewRect = CGRectMake(50, 50, 40, 40);
    UIView *first = [[UIView alloc] initWithFrame:viewRect];
    first.backgroundColor = [UIColor blueColor];
    
    //[meh addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:meh action:@selector(tap:)]];

    [first addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap:)]];
    
    //[first sizeThatFits:CGSizeMake(40, 40)];
    [self.mainView addSubview:first];

    Grid *griddy = [[Grid alloc] init];
    //griddy.size = [self.mainView bounds].size;
    griddy.size = [self.mainView bounds].size;//CGSizeMake(150, 150);
    griddy.cellAspectRatio = 1;
    griddy.minimumNumberOfCells = 12;
    
    griddy.minCellWidth = 4;
    griddy.minCellHeight = 4;
    griddy.maxCellHeight = 60;
    griddy.maxCellWidth = 60;
    
    NSLog(@"Location %d", (int)[griddy centerOfCellAtRow:0 inColumn:0].x);
    NSLog(@"Location %d", (int)[griddy centerOfCellAtRow:0 inColumn:0].y);
    
    /*
    UIView *second = [[UIView alloc] initWithFrame: CGRectMake([griddy centerOfCellAtRow:1 inColumn:1].x,
                                                               [griddy centerOfCellAtRow:1 inColumn:1].y,
                                                               griddy.minCellWidth,
                                                               griddy.minCellHeight)];
    */
    UIView *second = [[UIView alloc] initWithFrame:[griddy frameOfCellAtRow:5 inColumn:5]];
     second.backgroundColor = [UIColor redColor];
    [self.mainView addSubview:second];
    
    UIView *third = [[UIView alloc] initWithFrame:[griddy frameOfCellAtRow:2 inColumn:0]];
    third.backgroundColor = [UIColor redColor];
    [self.mainView addSubview:third];
    NSLog(@"%@", griddy.description);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)tap:(UITapGestureRecognizer *)sender{
    NSLog(@"Tap that ass");
}

@end
