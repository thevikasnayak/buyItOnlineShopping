//
//  LastViewController.h
//  buyItOnlineShopping
//
//  Created by Vikas Nayak on 30/01/18.
//  Copyright © 2018 Vikas Nayak. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LastViewController : UIViewController<UIAlertViewDelegate>


@property (weak, nonatomic) IBOutlet UIButton *btnWhatsnow;

//for random number

@property (weak, nonatomic) IBOutlet UILabel *lbl_random;

- (IBAction)btnWhatsnow:(id)sender;

@end
