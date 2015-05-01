//
//  AddRecipeViewController.m
//  RecipeStore
//
//  Created by Yung Dai on 2015-05-01.
//  Copyright (c) 2015 Yung Dai. All rights reserved.
//

#import "AddRecipeViewController.h"
#import "AppDelegate.h"

@interface AddRecipeViewController ()
@end


@implementation AddRecipeViewController {
    Recipe *recipe;
}



- (void)viewDidLoad {
    [super viewDidLoad];
    
    if (self.selectedRecipe) {
        self.nameTextField.text = self.selectedRecipe.name;
        self.imageTextField.text = self.selectedRecipe.image;
        self.prepTimeTextField.text = self.selectedRecipe.prepTime;
    }
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


/*
 For the save: method, we first grab the managed object context via AppDelegate and then create a NSManagedObject for the new recipe. To use Core Data Framework, the model objects should be instances of NSManagedObject or instances of classes that inherit from NSManagedObject. Recalled that we’ve created a subclass or NSManagedObject named Recipe in the data model, we use it to associate with the entity.
 To create a new instance of NSManagedObject for the Recipe entity, we use the insertNewObjectForEntityForName: method of the NSEntityDescription class to create a managed object. With the Recipe managed object, we then populate its properties with the values collected from the form. Lastly, we call up the save: method of the context to save the object into database. Always remember that the change of the model objects will not be saved to the persistent store until the save: method is called.
 Finally, it’s the cancel: method. For the method, we simply invoke the dismissViewControllerAnimated: method to dismiss the current view controller when user taps the cancel button.
 
 */



- (IBAction)cancel:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];

}

- (IBAction)save:(id)sender {
    
    AppDelegate *appDelegate = (AppDelegate *) [UIApplication sharedApplication].delegate;
    NSManagedObjectContext *managedObjectContext = [appDelegate managedObjectContext];
    
    // added to see if the recipe is selected to allow for the writing of the database if it's saved.
    if (self.selectedRecipe) {
        recipe = self.selectedRecipe;
    } else {
        recipe = (Recipe *)[NSEntityDescription insertNewObjectForEntityForName:@"Recipe" inManagedObjectContext:managedObjectContext];
    }
    
    recipe.name = self.nameTextField.text;
    recipe.image = self.imageTextField.text;
    recipe.prepTime = self.prepTimeTextField.text;
    
    NSError *error;
    if (![managedObjectContext save:&error]) {
        NSLog(@"Can't Save! %@ %@", error, [error localizedDescription]);
    }
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
