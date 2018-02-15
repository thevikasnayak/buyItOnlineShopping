//
//  SearchTableViewController.h
//  buyItOnlineShopping
//
//  Created by Vikas Nayak on 31/01/18.
//  Copyright © 2018 Vikas Nayak. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SearchTableViewController : UITableViewController<UISearchBarDelegate>

@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;

//for products
@property(strong,nonatomic)NSMutableArray *devices;


@end
