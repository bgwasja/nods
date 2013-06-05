//
//  SecondViewController.m
//  Nods
//
//  Created by Balazh Vasyl on 6/3/13.
//  Copyright (c) 2013 Balazh Vasyl. All rights reserved.
//

#import "SecondViewController.h"
#import "SecondCell.h"
#import "SecondCustomCollectionView.h"

@interface SecondViewController ()

@end

@implementation SecondViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"firstCell"];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark UICollectionViewDataSource

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}


-(NSInteger)collectionView:(UICollectionView *)collectionView
    numberOfItemsInSection:(NSInteger)section
{
    return 20;
}


-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
                 cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    SecondCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"secondCell" forIndexPath:indexPath];
    UIImageView *bg = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"facebook.png"]];
    cell.backgroundView = bg;
    return cell;
}


 -(UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
     SecondCustomCollectionView *header = nil;
     if ([kind isEqual:UICollectionElementKindSectionHeader]){
         header = [collectionView dequeueReusableSupplementaryViewOfKind:kind
                                                     withReuseIdentifier:@"secondHeader"
                                                            forIndexPath:indexPath];
         header.headerLabel.text = @"Second Header !!!";
     }
     return header;
}
 
#pragma mark -
#pragma mark UICollectionViewDelegate

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    [self performSegueWithIdentifier:@"detail" sender:self];
}


#pragma mark - CollectionViewDelegateFlowLayout

- (UIEdgeInsets)collectionView:
(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    return UIEdgeInsetsMake(1, 12, 18, 8);
}


- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    return 10;
}

@end
