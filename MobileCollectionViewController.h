//
//  MobileCollectionViewController.h
//  buyItOnlineShopping
//
//  Created by Vikas Nayak on 19/01/18.
//  Copyright © 2018 Vikas Nayak. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MobileCollectionViewController : UICollectionViewController<UICollectionViewDelegate,UICollectionViewDataSource>

@property(strong,nonatomic)NSMutableArray *mobileImages;
@property(strong,nonatomic)NSMutableArray *mobileNames;
@property(strong,nonatomic)NSMutableArray *mobilePrices;


@end
