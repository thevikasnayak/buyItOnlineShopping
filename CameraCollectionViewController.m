//
//  CameraCollectionViewController.m
//  buyItOnlineShopping
//
//  Created by Vikas Nayak on 19/01/18.
//  Copyright © 2018 Vikas Nayak. All rights reserved.
//

#import "CameraCollectionViewController.h"
#import "CameraCollectionViewCell.h"
#import "CameraCollectionViewCellDetail.h"

@interface CameraCollectionViewController ()

@end

@implementation CameraCollectionViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //string images in array
    _cameraNames=[[NSMutableArray alloc]initWithObjects:@"Canon EOS",@"Canon EOS 5D",@"Canon EOS 1300D",@"Iconic Pro",@"JBL Clear",@"BOSE Crystal",@"Samsung Basic",@"Motorola MotoPro",@"One More Piston",@"Iconic Basic",@"Motorola Comfort",@"Sennheiser Fit",@"Nexon Pure",@"Nikon CoolPix",@"Nikon D5500 ",@"Nikon D5600",@"Nikon D7000",@"MI Piston 3", nil];
    
    
    
    _cameraImages=[[NSMutableArray alloc]initWithObjects:@"canonEOS.jpg",@"canonEOS5D.jpeg",@"canonEOS1300D.jpg",@"earphone1.png",@"earphone2.jpg",@"earphone3.jpeg",@"earphone4.jpg",@"earphone5.png",@"earphone6.png",@"earphone7.png",@"headphone1.png",@"headphone2.jpg",@"headphone3.jpg",@"nikonCoolpix.jpg",@"NikonD550.jpg",@"nikonD5600.jpg",@"nikonD7000.jpeg",@"earphone6.png",nil];
    
    
    
    _cameraPrices=[[NSMutableArray alloc]initWithObjects:@"120000/-",@"270000/-",@"98000/-",@"1299/-",@"1599/-",@"3299/-",@"299/-",@"1600/-",@"999/-",@"560/-",@"1800/-",@"1499/-",@"1099/-",@"12990/-",@"36000/-",@"45000/-",@"69000/-",@"899/-", nil];
    
    
    //count
    NSLog (@"Number of elements in array = %lu", [_cameraPrices count]);
    NSLog (@"Number of elements in array = %lu", [_cameraImages count]);
    NSLog (@"Number of elements in array = %lu", [_cameraNames count]);
    
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

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
//#warning Incomplete implementation, return the number of sections
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of items
    return _cameraImages.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CameraCell" forIndexPath:indexPath];
    
    UIImageView *image1=(UIImageView *)[cell viewWithTag:1];
    UILabel *label1=(UILabel *)[cell viewWithTag:2];
    UILabel *label2=(UILabel *)[cell viewWithTag:3];
    
    image1.image=[UIImage imageNamed:[_cameraImages objectAtIndex:indexPath.row]];
    label1.text=[_cameraNames objectAtIndex:indexPath.row];
    label2.text=[_cameraPrices objectAtIndex:indexPath.row];
    
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
