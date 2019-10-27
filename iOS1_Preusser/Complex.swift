//
//  main.swift
//  iOS1Preusser
//
//  Created by Preußer, Sophie on 15.10.19.
//  Copyright © 2019 Preußer, Sophie. All rights reserved.
//

import Darwin

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
        let newRe = (re*c) - (im*d)
        let newIm = (re*d) + (im*c)
        re = newRe
        im = newIm
        print("Multiply by complex (ac - bd) + (ad + bc) (\(newRe)) + (\(newIm))")
    }
    
    func rotateBy(complex: Complex, angle: Double) -> Void {
        let cosinus = cos(angle)
        let sinus = sin(angle)
        //(a*cosinus-b*sinus) + (ad+bc) i
        let newRe = (re*cosinus) - (im*sinus)
        let newIm = (re*sinus) + (im*cosinus)
        re = newRe
        im = newIm
        
        print(("(\((newRe * 1000).rounded() / 1000)) + (\(newIm))"))
    }
    
    func plus(complex: Complex) -> Complex {
        return self
    }
}
