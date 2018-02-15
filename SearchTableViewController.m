//
//  SearchTableViewController.m
//  buyItOnlineShopping
//
//  Created by Vikas Nayak on 31/01/18.
//  Copyright © 2018 Vikas Nayak. All rights reserved.
//

#import "SearchTableViewController.h"

@interface SearchTableViewController ()
{
    NSMutableArray *filteredDevices;
    BOOL isFiltered;
}

@end

@implementation SearchTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    isFiltered=false;
    self.searchBar.delegate=self;
    
    
    //load devices names
    
    _devices=[[NSMutableArray alloc]initWithObjects:@"Acer AIO",@"Compaq Set",@"Dell AIO",@"Desktop Set i3",@"Desktop Set i5",@"HP i3",@"HP Slim",@"iMac i3",@"iMac i5",@"iMac i7",@"iMac Pro",@"iMac Pro2",@"iMac Pro3",@"iMac M2",@"Leneno full set",@"Lenevo Vertical Pc",@"Lenevo Vertical Pc2",@"Lenevo AIO",@"Lenevo PC",@"HP Branded",@"Acer Chrome",@"Asus SlimBook",@"Dell 251",@"Dell G43",@"HP G41",@"HP Notebook",@"HP Notebook 2",@"HP Touch Edition",@"lenevo Mega",@"Lenevo NoteBook",@"Lenevo Touch Pro",@"Lenevo YogaPad",@"MacBook Pro 2017",@"MacBook Pro 2015",@"Xiaomi Notebook",@"Xiaomi NoteBook 2",@"MS Surface",@"MS Surface 2",@"MS Surface 3",@"Xiaomi Note PRo",@"Xiaomi Notebook Limited",@"Samsung S186",@"Samsung Notebook",@"Trans Gaming Edition",@"Canon EOS",@"Canon EOS 5D",@"Canon EOS 1300D",@"Iconic Pro",@"JBL Clear",@"BOSE Crystal",@"Samsung Basic",@"Motorola MotoPro",@"One More Piston",@"Iconic Basic",@"Motorola Comfort",@"Sennheiser Fit",@"Nexon Pure",@"Nikon CoolPix",@"Nikon D5500 ",@"Nikon D5600",@"Nikon D7000",@"MI Piston 3",@"Google Pixel",@"Google Pixel 2",@"Google Pixel Pro",@"Iphone 5",@"Iphone 6",@"Iphone 7",@"Iphone 7Plus",@"Iphone 8Pro",@"Iphone X",@"Moto G5",@"Moto Max",@"Moto X",@"Nokia 6",@"Nokia 8",@"Nokia Lumia 810",@"OPPO F1S",@"OPPO F3",@"OPPO R7Plus",@"OPPO R11SE",@"Samsung Edge",@"Samsung Note 2",@"Samsung Prime",@"Samsung S2",@"Samsung S3",@"Samsung S8",@"Samsung S8Plus",@"Xiaomi A1",@"Xiaomi Max",@"Xiaomi Mi5",@"Xiaomi Mix 2",@"Xiaomi Note 5A",@"Xiaomi Mi4i", nil];
    
    
   
}

//new method for text change
-(void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText
{
    if(searchText.length==0)
    {
        isFiltered=false;
    }
    else
    {
        isFiltered=true;
        filteredDevices=[[NSMutableArray alloc]init];
        
        for(NSString *device in _devices)
        {
            NSRange nameRange=[device rangeOfString:searchText options:NSCaseInsensitiveSearch];
            if (nameRange.location!=NSNotFound)
            {
                [filteredDevices addObject:device];
            }
        }
        
    }
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of rows
    if (isFiltered)
    {
        return filteredDevices.count;
    }
    return _devices.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    if (isFiltered)
    {
        cell.textLabel.text=filteredDevices[indexPath.row];
    }
    else
    {
        cell.textLabel.text=_devices[indexPath.row];
    }
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
