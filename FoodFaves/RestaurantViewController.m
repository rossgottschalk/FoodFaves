//
//  ViewController.m
//  FoodFaves
//
//  Created by Ross Gottschalk on 8/10/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import "RestaurantViewController.h"
#import "Restaurant.h"
#import <CoreData/CoreData.h>
#import "AppDelegate.h"

@interface RestaurantViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextView *notesTextView;
@property (weak, nonatomic) IBOutlet UIStepper *ratingStepper;
@property (weak, nonatomic) IBOutlet UILabel *ratingLabel;

@property (strong, nonatomic) NSMutableArray *restaurants;
@property (strong, nonatomic) NSManagedObjectContext *moc;
@property (nonnull, copy) NSString *restName;





@end

@implementation RestaurantViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.restaurants = [[NSMutableArray alloc] init];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)stepperValueChanged:(UIStepper *)sender
{

//        UIView *contentView = [sender superview];
//        //content view is the "superview" of what the sender(uistepper) is inside.
//        
//        SpellCell *cell = (SpellCell *)[contentView superview];
//        //this is one more step larger. Basically the cell(contentView) superviewed
//        
//        NSIndexPath *indexPath = [self.tableView indexPathForCell:cell];
//        Counter *aCounter = self.counters [indexPath.row];
//        aCounter.count = [NSNumber numberWithDouble:sender.value];
//        //updating the value count in our model
        
        self.ratingLabel.text = [NSString stringWithFormat:@"Rating: %g/5", sender.value];
        //Take the new value(of the stepper) and string the new number with the spellCountLabel
        
//        [self saveContext];
}
- (IBAction)addRestaurantTapped:(UIBarButtonItem *)sender
{
    NSString *restName = [NSString stringWithFormat:@"%@", self.nameTextField.text];
    [self.restaurants addObject:restName];
    Restaurant *aRestaurant = self.restaurants;
    aRestaurant.restaurantName = restName;
    ////This is where im stuck. how do you take a text field and put it in a class.
    
    
    
//    Counter *aCounter = self.counters[indexPath.row];
//    aCounter.spellName = textField.text;
//    [textField resignFirstResponder];
}



@end
