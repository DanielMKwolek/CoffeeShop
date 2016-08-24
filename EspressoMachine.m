//
//  EspressoMachine.m
//  CoffeeShop
//
//  Created by Daniel Kwolek on 8/23/16.
//  Copyright © 2016 Arcore. All rights reserved.
//

#import "EspressoMachine.h"

@implementation EspressoMachine


- (void)addWater
{
    _haswater = TRUE;
}

- (void)heatWater
{
    _waterIsHot = TRUE;
}

- (void)addBeans
{
    _hasbeans = TRUE;
}

@end
