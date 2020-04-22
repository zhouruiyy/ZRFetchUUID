//
//  ViewController.m
//  ZRFetchUUID
//
//  Created by Zhou,Rui(ART) on 2020/4/22.
//  Copyright © 2020 Zhou,Rui(ART). All rights reserved.
//

#import "ViewController.h"
#import "ZRUUIDMgr.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSString *uuid = [ZRUUIDMgr getIdentifier];
    NSLog(@"uuid is : %@", uuid);
}


@end
