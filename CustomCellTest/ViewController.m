//
//  ViewController.m
//  CustomCellTest
//
//  Created by SDT-1 on 2014. 1. 7..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "ViewController.h"
#import "ProductCell.h"
#import "Product.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>{
    NSArray *data;
}


@end

@implementation ViewController

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [data count];

}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    ProductCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PRODUCT_CELL"];
    
    Product *item = data[indexPath.row];
    [cell setProductInfo:item];
    
    return cell;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    data = @[[Product product:@"bmw" price:@"100" image:@"car1.png"],
             [Product product:@"audi" price:@"200" image:@"car2.png"],
             [Product product:@"hyundai" price:@"250" image:@"car3.png"],
             [Product product:@"kia" price:@"120" image:@"car4.png"],
             [Product product:@"benz" price:@"300" image:@"car5.png"]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
