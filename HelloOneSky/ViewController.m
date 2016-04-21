//
//  ViewController.m
//  HelloOneSky
//
//  Created by James Perih on 2016-04-21.
//  Copyright © 2016 Hot Dang Interactive. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutletCollection(UILabel) NSArray *rootWordLabelCollection;
@property (strong, nonatomic) IBOutletCollection(UILabel) NSArray *translatedWordLabelCollection;

@end

@implementation ViewController {
    NSArray <NSString *> *rootWords;
    NSArray <NSString *> *translatedWords;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self initRootWordsArray];
    [self initTranslatedWordsArray];
    
    [self initWords:rootWords withCollection:_rootWordLabelCollection];
    [self initWords:translatedWords withCollection:_translatedWordLabelCollection];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - DataSource
- (void)initRootWordsArray {
    rootWords = @[@"Actions", @"Activity", @"Add", @"All", @"Answer",
                  @"Camera", @"Cancel", @"Comment", @"Configure", @"Connect",
                  @"Content", @"Copy", @"Create", @"Daily", @"Deal",
                  @"Describe", @"Details", @"Discuss", @"Done", @"Expire",
                  @"Edit", @"Email", @"Enter", @"Expand", @"Feature",
                  @"Follow", @"Forgot", @"Home", @"Ignore", @"Image"];
}

- (void)initTranslatedWordsArray {
    translatedWords = @[
                        NSLocalizedString(@"Actions", nil),
                        NSLocalizedString(@"Activity", nil),
                        NSLocalizedString(@"Add", nil),
                        NSLocalizedString(@"All", nil),
                        NSLocalizedString(@"Answer", nil),
                        
                        NSLocalizedString(@"Camera", nil),
                        NSLocalizedString(@"Cancel", nil),
                        NSLocalizedString(@"Comment", nil),
                        NSLocalizedString(@"Configure", nil),
                        NSLocalizedString(@"Connect", nil),
                  
                        NSLocalizedString(@"Content", nil),
                        NSLocalizedString(@"Copy", nil),
                        NSLocalizedString(@"Create", nil),
                        NSLocalizedString(@"Daily", nil),
                        NSLocalizedString(@"Deal", nil),
                  
                        NSLocalizedString(@"Describe", nil),
                        NSLocalizedString(@"Details", nil),
                        NSLocalizedString(@"Discuss", nil),
                        NSLocalizedString(@"Done", nil),
                        NSLocalizedString(@"Expire", nil),
                  
                        NSLocalizedString(@"Edit", nil),
                        NSLocalizedString(@"Email", nil),
                        NSLocalizedString(@"Enter", nil),
                        NSLocalizedString(@"Expand", nil),
                        NSLocalizedString(@"Feature", nil),
                  
                        NSLocalizedString(@"Follow", nil),
                        NSLocalizedString(@"Forgot", nil),
                        NSLocalizedString(@"Home", nil),
                        NSLocalizedString(@"Ignore", nil),
                        NSLocalizedString(@"Image", nil)];
}

- (void)initWords:(NSArray <NSString *> *)words withCollection:(NSArray <UILabel *> *)collection {
    NSUInteger counter = 0;
    for (UILabel *label in collection) {
        label.text = words[counter];
        counter++;
    }
}

@end
