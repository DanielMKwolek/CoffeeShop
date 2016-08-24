//
//  EspressoMachine.h
//  CoffeeShop
//
//  Created by Daniel Kwolek on 8/23/16.
//  Copyright © 2016 Arcore. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol EspressoMachineDelegate;


@interface EspressoMachine : NSObject

- (void)heatWater;
- (void)addBeans;
- (void)addWater;


@property (nonatomic)BOOL haswater;
@property (nonatomic)BOOL waterIsHot;
@property (nonatomic)BOOL hasbeans;
@property (nonatomic, weak)id <EspressoMachineDelegate> delegate;

@end


@protocol EspressoMachineDelegate

- (void)prepareEspresso:(EspressoMachine *)espressoMachine;
- (void)espressoMachineWaterHasBecomeHot:(EspressoMachine *)espressoMachine;
- (void)espressoMachineDidFinishMakingEspresso:(EspressoMachine *)espressoMachine;

@end
