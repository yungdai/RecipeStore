//
//  RecipeStoreTableViewController.h
//  RecipeStore
//
//  Created by Yung Dai on 2015-05-01.
//  Copyright (c) 2015 Yung Dai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface RecipeStoreTableViewController : UITableViewController <NSFetchedResultsControllerDelegate> //The NSFetchedResultsControllerDelegate protocol provides methods to notify its delegate whenever there is any changes in the controller’s fetch results. Later we’ll implement the methods.

@end
