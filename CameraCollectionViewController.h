//
//  CameraCollectionViewController.h
//  buyItOnlineShopping
//
//  Created by Vikas Nayak on 19/01/18.
//  Copyright © 2018 Vikas Nayak. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CameraCollectionViewController : UICollectionViewController<UICollectionViewDataSource,UICollectionViewDelegate>

@property(strong,nonatomic)NSMutableArray *cameraImages;
@property(strong,nonatomic)NSMutableArray *cameraNames;
@property(strong,nonatomic)NSMutableArray *cameraPrices;




@end
