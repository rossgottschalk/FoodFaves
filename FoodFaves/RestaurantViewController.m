//
//  ViewController.m
//  FoodFaves
//
//  Created by Ross Gottschalk on 8/10/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import "RestaurantViewController.h"

@interface RestaurantViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextView *notesTextView;
@property (weak, nonatomic) IBOutlet UIStepper *ratingStepper;
@property (weak, nonatomic) IBOutlet UILabel *ratingLabel;


@end

@implementation RestaurantViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)stepperValueChanged:(UIStepper *)sender
{
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

}


@end
