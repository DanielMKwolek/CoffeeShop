//
//  main.m
//  CoffeeShop
//
//  Created by Daniel Kwolek on 8/23/16.
//  Copyright © 2016 Arcore. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EspressoMachine.h"
#import "Barista.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        EspressoMachine *espressoMachine = [[EspressoMachine alloc] init];
        Barista *barista = [[Barista alloc] init];
        espressoMachine.delegate = barista;
        [espressoMachine.delegate prepareEspresso:espressoMachine];
    }
    return 0;
}
