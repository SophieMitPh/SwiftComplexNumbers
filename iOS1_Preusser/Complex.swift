//
//  main.swift
//  iOS1Preusser
//
//  Created by Preußer, Sophie on 15.10.19.
//  Copyright © 2019 Preußer, Sophie. All rights reserved.
//

class Complex {
    var re = 0.0
    var im = 0.0
    // Initializer
    init(re: Double, im: Double) {
        self.re = re
        self.im = im
    }
    
    func incrementBy(realAmount: Double) -> Void {
        re += realAmount
    }
    
    func incrementBy(imaginaryAmount: Double) -> Void {
        im += imaginaryAmount
    }
    
    func incrementBy(complex: Complex) -> Void {
        self.incrementBy(imaginaryAmount: complex.im)
        self.incrementBy(realAmount: complex.re)
        print(re, im)
    }
    
    func multiplyBy(complex: Complex) -> Void {
        let c = complex.re
        let d = complex.im
        //(ac-bd) + (ad+bc) i
        let acMinusbd = (re*c) - (im*d)
        let adPlusbc = (re*d) + (im*c)
        
        print("Multiply by complex (ac - bd) + (ad + bc) (\(acMinusbd)) + (\(adPlusbc))")
    }
    
    func rotateBy(by complex: Complex) -> Void {
        
    }
    
    func plus(complex: Complex) -> Complex {
        return self
    }
}
