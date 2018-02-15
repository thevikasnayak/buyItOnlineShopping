//
//  MobileCollectionViewController.m
//  buyItOnlineShopping
//
//  Created by Vikas Nayak on 19/01/18.
//  Copyright © 2018 Vikas Nayak. All rights reserved.
//

#import "MobileCollectionViewController.h"
#import "LaptopCollectionViewCellDetail.h"
#import "LaptopCollectionViewCell.h"

@interface MobileCollectionViewController ()

@end

@implementation MobileCollectionViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //string images in array
    _mobileImages=[[NSMutableArray alloc]initWithObjects:@"googlePixel.png",@"googlePixel2.png",@"googlePixelPro.png",@"iphone5.png",@"iphone6.png",@"iphone7.png",@"iphone7Plus.png",@"iphone8Pro.png",@"iphoneX.png",@"motoG5.png",@"motoMax.jpg",@"motoX.jpeg",@"nokia6.png",@"nokia8.jpg",@"nokiaLumia810.png",@"oppoF1S.jpg",@"oppoF3.png",@"oppoR7Plus.png",@"oppoR11SE.png",@"samsungEdge.png",@"samsungNote2.png",@"samsungPrime.jpg",@"samsungS2.png",@"samsungS3.png",@"samsungS8.png",@"samsungS8Plus.png",@"XiaomiA1.jpg",@"XiaomiMax.jpg",@"xiaomiMi5.png",@"xiaomiMIX2.jpg",@"xiaomiNote5A.jpg",@"xioamiMi4i.jpg", nil];
    
    NSLog (@"Number of elements in array = %lu", [_mobileImages count]);
    
    _mobileNames=[[NSMutableArray alloc]initWithObjects:@"Google Pixel",@"Google Pixel 2",@"Google Pixel Pro",@"Iphone 5",@"Iphone 6",@"Iphone 7",@"Iphone 7Plus",@"Iphone 8Pro",@"Iphone X",@"Moto G5",@"Moto Max",@"Moto X",@"Nokia 6",@"Nokia 8",@"Nokia Lumia 810",@"OPPO F1S",@"OPPO F3",@"OPPO R7Plus",@"OPPO R11SE",@"Samsung Edge",@"Samsung Note 2",@"Samsung Prime",@"Samsung S2",@"Samsung S3",@"Samsung S8",@"Samsung S8Plus",@"Xiaomi A1",@"Xiaomi Max",@"Xiaomi Mi5",@"Xiaomi Mix 2",@"Xiaomi Note 5A",@"Xiaomi Mi4i", nil];
    
     NSLog (@"Number of elements in array = %lu", [_mobilePrices count]);
    
    _mobilePrices=[[NSMutableArray alloc]initWithObjects:@"46000/-",@"66000/-",@"69000/-",@"24000/-",@"28000/-",@"65000/-",@"72000/-",@"81000/-",@"106000/-",@"15000/-",@"19000/-",@"23000/-",@"14999/-",@"16000/-",@"19000/-",@"26000/-",@"13999/-",@"28000/-",@"16600/-",@"74000",@"17999/-",@"15000/-",@"13000/-",@"23000/-",@"69000/-",@"73900/-",@"14999/-",@"18000/-",@"25000/-",@"32999/-",@"18000/-",@"14000/-", nil];
    
     NSLog (@"Number of elements in array = %lu", [_mobileNames count]);
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



- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
//#warning Incomplete implementation, return the number of sections
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of items
    return _mobileImages.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    //return images
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"MobileCell" forIndexPath:indexPath];
    
    UIImageView *image1=(UIImageView *)[cell viewWithTag:1];
    UILabel *label1=(UILabel *)[cell viewWithTag:2];
    UILabel *label2=(UILabel *)[cell viewWithTag:3];
    
    image1.image=[UIImage imageNamed:[_mobileImages objectAtIndex:indexPath.row]];
    label1.text=[_mobileNames objectAtIndex:indexPath.row];
     label2.text=[_mobilePrices objectAtIndex:indexPath.row];
    
    // Configure the cell
    
    return cell;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
   // MobileCollectionViewCellDetail * detailView=[self.storyboard instantiateViewControllerWithIdentifier:@"imageDetail_Identifier"];
    
   // detailView.stringImage=[_mobileImages objectAtIndex:indexPath.row];
   // [self.navigationController pushViewController:detailView animated:YES];
    
}


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
