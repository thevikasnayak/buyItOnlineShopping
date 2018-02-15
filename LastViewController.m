//
//  LastViewController.m
//  buyItOnlineShopping
//
//  Created by Vikas Nayak on 30/01/18.
//  Copyright © 2018 Vikas Nayak. All rights reserved.
//

#import "LastViewController.h"
#import "HomeViewController.h"

@interface LastViewController ()

@end

@implementation LastViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //round btn
    
     self.btnWhatsnow.layer.cornerRadius = self.btnWhatsnow.frame.size.height/2;
    
    
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

//actionsheet index method




- (IBAction)btnWhatsnow:(id)sender
{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"BuyIt" message:@"Choose your option" preferredStyle:UIAlertControllerStyleActionSheet];
    
    //btn1
    UIAlertAction *shopMore = [UIAlertAction actionWithTitle:@"Shop more?" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action)
    {
      //code area
        
        HomeViewController *home=[self.storyboard instantiateViewControllerWithIdentifier:@"homeView_Identifier"];
        [self presentViewController:home animated:YES completion:nil];
      
    }];
    
    //btn2
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"Dismiss" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        
        [alert dismissViewControllerAnimated:YES completion:nil];
        
    }];
    
    //btn3
    UIAlertAction *quite = [UIAlertAction actionWithTitle:@"Want to exit?" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action)
                               {
                                   //code area
                                   
                                   exit(0);
                                   
                               }];
    
    [alert addAction:shopMore];
    [alert addAction:quite];
    [alert addAction:cancel];
    
    [self presentViewController:alert animated:YES completion:nil];
    
    
    
    
    
    
    
    
}
@end
