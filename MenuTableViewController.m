//
//  MenuTableViewController.m
//  buyItOnlineShopping
//
//  Created by Vikas Nayak on 09/02/18.
//  Copyright © 2018 Vikas Nayak. All rights reserved.
//

#import "MenuTableViewController.h"
#import "MenuTableViewCell.h"

#import "ProfileViewController.h"
#import "AboutViewController.h"
#import "CallViewController.h"
#import "EmailViewController.h"



@interface MenuTableViewController ()

@property UIStoryboard *sb;

@property (strong, nonatomic) IBOutlet UITableView *menuTableView;

@end

@implementation MenuTableViewController

@synthesize icon,name;


- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    //for back or to load previous page after select(go back to home)
     self.sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
   // [self.menuTableView registerClass:[UITableViewCell self] forCellReuseIdentifier:@"Cell"];
    
    icon=[[NSMutableArray alloc]initWithObjects:@"user1.png",@"call64.png",@"email64.png",@"about64.png",@"remove64.png", nil];
    name=[[NSMutableArray alloc]initWithObjects:@"User",@"Call 24X7",@"Email us",@"More about",@"Delete your Account", nil];
    
    
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return icon.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    UITableViewCell *cell =  [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    

    UIImageView *image1=(UIImageView *)[cell viewWithTag:1];
    UILabel *label1=(UILabel *)[cell viewWithTag:2];
    
    image1.image=[UIImage imageNamed:[icon objectAtIndex:indexPath.row]];
    label1.text=[name objectAtIndex:indexPath.row];
    
    return cell;
}

//- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
//    return 50;
//}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    if(indexPath.row==0) //seleceted index value show different view controller
    {
        ProfileViewController *detailView1=[self.sb instantiateViewControllerWithIdentifier:@"ProfileVC"];
        [self.navigationController pushViewController:detailView1 animated:YES];
    }

    else if (indexPath.row==1)
    {
        CallViewController *detailView2=[self.sb instantiateViewControllerWithIdentifier:@"CallVC"];
        [self.navigationController pushViewController:detailView2 animated:YES];
    }

    else if (indexPath.row==2)
    {
        EmailViewController *detailView3=[self.sb instantiateViewControllerWithIdentifier:@"EmailVC"];
        [self.navigationController pushViewController:detailView3 animated:YES];
    }
    else if (indexPath.row==3)
    {
        AboutViewController *detailView4=[self.sb instantiateViewControllerWithIdentifier:@"AboutVC"];
        [self.navigationController pushViewController:detailView4 animated:YES];
    }
    else
    {
        UIAlertController *alert=[UIAlertController alertControllerWithTitle:@"Want to deelete your account" message:@"choose your option" preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction *cancel=[UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action)
                               
            {
             [alert dismissViewControllerAnimated:YES completion:nil];
            }];
        
        UIAlertAction *delete=[UIAlertAction actionWithTitle:@"Delete" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action)
            {
                    //account delete code
                
                
                
                
                
                NSLog(@"Account removed");
            }];
        
        [alert addAction:delete];
        [alert addAction:cancel];
        [self presentViewController:alert animated:YES completion:nil];
        
    }
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
