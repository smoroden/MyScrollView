//
//  ViewController.m
//  MyScrollView
//
//  Created by Zach Smoroden on 2016-05-16.
//  Copyright © 2016 Zach Smoroden. All rights reserved.
//

#import "ViewController.h"
#import "MyScrollView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet MyScrollView *myScrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *redView = [[UIView alloc] initWithFrame:(CGRect){20,20,100,100}];
    redView.backgroundColor = [UIColor redColor];
    
    UIView *greenView = [[UIView alloc] initWithFrame:(CGRect){150,150,150,200}];
    greenView.backgroundColor = [UIColor greenColor];
    
    UIView *blueView = [[UIView alloc] initWithFrame:(CGRect){40,400,200,150}];
    blueView.backgroundColor = [UIColor blueColor];
    
    UIView *yellowView = [[UIView alloc] initWithFrame:(CGRect){100,600,180,150}];
    yellowView.backgroundColor = [UIColor yellowColor];
    
    [self.myScrollView addSubview:redView];
    [self.myScrollView addSubview:greenView];
    [self.myScrollView addSubview:blueView];
    [self.myScrollView addSubview:yellowView];
    
    
    self.myScrollView.contentSize = (CGSize){500,1000};
}


-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    //self.view.bounds = (CGRect){self.view.frame.origin.x, self.view.frame.origin.y + 100, self.view.frame.size.width, self.view.frame.size.height};
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
