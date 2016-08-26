//
//  EspressoMachine.m
//  CoffeeShop
//
//  Created by Daniel Kwolek on 8/23/16.
//  Copyright © 2016 Arcore. All rights reserved.
//

#import "EspressoMachine.h"

@implementation EspressoMachine

-(instancetype)init
{
    self = [super init];
    {
        _hasbeans = NO;
        _waterIsHot = NO;
        _haswater =NO;
    }
    return self;
}

- (void)addWater
{
    _haswater = TRUE;
}

- (void)heatWater
{
    _waterIsHot = TRUE;
    [_delegate espressoMachineWaterHasBecomeHot:self];
}

- (void)addBeans
{
    _hasbeans = TRUE;
}
- (void)makeEspresso
{
    [_delegate prepareEspresso:self];
    [_delegate espressoMachineDidFinishMakingEspresso:self];
}

@end
