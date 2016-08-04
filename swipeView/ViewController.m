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
@property (weak, nonatomic) IBOutlet UIButton *firstButton;
@property (weak, nonatomic) IBOutlet UIButton *secondButton;
@property (weak, nonatomic) IBOutlet UIButton *thirdButton;
- (IBAction)firstButtonAction:(id)sender;
- (IBAction)secondButtonAction:(id)sender;
- (IBAction)thirdButtonAction:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _scrollView.delegate = self;
    [[UIApplication sharedApplication] setStatusBarHidden:YES
                                            withAnimation:UIStatusBarAnimationFade];

}
- (BOOL)prefersStatusBarHidden {
    return YES;
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
- (IBAction)firstButtonAction:(id)sender {
    CGRect frame = self.scrollView.frame;
    frame.origin.x = frame.size.width * 0;
    frame.origin.y = 0;
    [self.scrollView scrollRectToVisible:frame animated:YES];
}

- (IBAction)secondButtonAction:(id)sender {
    CGRect frame = self.scrollView.frame;
    frame.origin.x = frame.size.width * 1;
    frame.origin.y = 0;
    [self.scrollView scrollRectToVisible:frame animated:YES];
}

- (IBAction)thirdButtonAction:(id)sender {
    CGRect frame = self.scrollView.frame;
    frame.origin.x = frame.size.width * 2;
    frame.origin.y = 0;
    [self.scrollView scrollRectToVisible:frame animated:YES];
}
@end
