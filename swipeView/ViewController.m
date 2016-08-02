//
//  ViewController.m
//  swipeView
//
//  Created by Mr Ruby on 02/08/16.
//  Copyright © 2016 Rnjai Lamba. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _scrollView.delegate = self;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    int indexOfPage = scrollView.contentOffset.x / scrollView.frame.size.width;
    NSLog(@"page %d",indexOfPage );
    //your stuff with index
}
@end
