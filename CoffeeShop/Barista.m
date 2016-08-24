//
//  Barista.m
//  CoffeeShop
//
//  Created by Daniel Kwolek on 8/23/16.
//  Copyright © 2016 Arcore. All rights reserved.
//

#import "Barista.h"

@implementation Barista

- (void) addBeans:(EspressoMachine *)espressoMachine
{
    NSLog(@"I just added some beans");
    espressoMachine.hasbeans = true;
}

- (void) addWater:(EspressoMachine *)espressoMachine
{
    NSLog(@"I just added some water");
    espressoMachine.haswater = true;
}

- (void) heatWater:(EspressoMachine *)espressoMachine
{
    NSLog(@"I just heated the water");
    espressoMachine.waterIsHot = true;
}

- (void) prepareEspresso:(EspressoMachine *)espressoMachine
{
    BOOL espressoDone = NO;
    while (!espressoDone)
    {
        if (espressoMachine.haswater)
        {
            if (espressoMachine.hasbeans)
            {
                if (espressoMachine.waterIsHot)
                {
                    [self espressoMachineDidFinishMakingEspresso:espressoMachine];
                    espressoDone = YES;
                } else
                {
                    NSLog(@"Sorry, there's no hot water in the machine");
                    [self heatWater:espressoMachine];
                }
            } else
            {
                NSLog(@"Sorry, there's no beans in the machine");
                [self addBeans:espressoMachine];
            }
        } else
        {
            NSLog(@"Sorry there's no water in the machine.");
            [self addWater:espressoMachine];
        }
    }
}

- (void)espressoMachineWaterHasBecomeHot:(EspressoMachine *)espressoMachine
{
    espressoMachine.waterIsHot = TRUE;
}

- (void)espressoMachineDidFinishMakingEspresso:(EspressoMachine *)espressoMachine
{
    if(espressoMachine.hasbeans && espressoMachine.haswater && espressoMachine.waterIsHot)
    NSLog(@"Here is your espresso! Thank you and have a nice day!");
}

@end
