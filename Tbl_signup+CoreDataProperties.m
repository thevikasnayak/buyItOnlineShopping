//
//  Tbl_signup+CoreDataProperties.m
//  buyItOnlineShopping
//
//  Created by Vikas Nayak on 05/02/18.
//  Copyright © 2018 Vikas Nayak. All rights reserved.
//
//

#import "Tbl_signup+CoreDataProperties.h"

@implementation Tbl_signup (CoreDataProperties)

+ (NSFetchRequest<Tbl_signup *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Tbl_signup"];
}

@dynamic email;
@dynamic name;
@dynamic password;
@dynamic phone;

@end
