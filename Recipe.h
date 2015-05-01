//
//  Recipe.h
//  RecipeStore
//
//  Created by Yung Dai on 2015-05-01.
//  Copyright (c) 2015 Yung Dai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Recipe : NSManagedObject

@property (nonatomic, retain) NSString * image;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * prepTime;

@end
