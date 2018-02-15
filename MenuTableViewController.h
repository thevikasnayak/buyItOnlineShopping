//
//  MenuTableViewController.h
//  buyItOnlineShopping
//
//  Created by Vikas Nayak on 09/02/18.
//  Copyright © 2018 Vikas Nayak. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MenuTableViewController : UITableViewController<UITableViewDelegate,UITableViewDataSource,UIAlertViewDelegate>

@property(strong,nonatomic)NSMutableArray *icon;
@property(strong,nonatomic)NSMutableArray *name;




@end
