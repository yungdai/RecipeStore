//
//  AddRecipeViewController.h
//  RecipeStore
//
//  Created by Yung Dai on 2015-05-01.
//  Copyright (c) 2015 Yung Dai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Recipe.h"



@interface AddRecipeViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *nameTextField;
@property (strong, nonatomic) IBOutlet UITextField *imageTextField;
@property (strong, nonatomic) IBOutlet UITextField *prepTimeTextField;
@property (strong) Recipe *selectedRecipe;
- (IBAction)cancel:(id)sender;
- (IBAction)save:(id)sender;

@end
