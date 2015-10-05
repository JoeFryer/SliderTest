//
//  ViewController.m
//  SliderTest
//
//  Created by Joe Fryer on 05/10/2015.
//  Copyright © 2015 Joe Fryer. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@property (nonatomic, weak) IBOutlet UISlider *slider1;
@property (nonatomic, weak) IBOutlet UISlider *slider2;

@property (nonatomic, weak) IBOutlet UILabel *label1;
@property (nonatomic, weak) IBOutlet UILabel *label2;

@end


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.slider1.minimumValue = 0.0f;
    self.slider1.maximumValue = 100.0f;
    
    self.slider2.minimumValue = 0.0f;
    self.slider2.maximumValue = 100.0f;
    
    self.label1.text = @"0";
    self.label2.text = @"0";
}

- (IBAction)slider1ValueChanged:(UISlider *)sender
{
    self.label1.text = [NSString stringWithFormat:@"%.0f", sender.value];
}

- (IBAction)slider2ValueChanged:(UISlider *)sender
{
    float max = 100 - self.slider1.value;
    if (sender.value > max) {
        sender.value = max;
    }
    self.label2.text = [NSString stringWithFormat:@"%.0f", sender.value];
}

@end
