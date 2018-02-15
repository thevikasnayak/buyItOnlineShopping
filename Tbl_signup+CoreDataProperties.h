//
//  Tbl_signup+CoreDataProperties.h
//  buyItOnlineShopping
//
//  Created by Vikas Nayak on 05/02/18.
//  Copyright © 2018 Vikas Nayak. All rights reserved.
//
//

#import "Tbl_signup+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Tbl_signup (CoreDataProperties)

+ (NSFetchRequest<Tbl_signup *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *email;
@property (nullable, nonatomic, copy) NSString *name;
@property (nullable, nonatomic, copy) NSString *password;
@property (nullable, nonatomic, copy) NSString *phone;

@end

NS_ASSUME_NONNULL_END
