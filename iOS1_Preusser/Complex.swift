//
//  main.swift
//  iOS1Preusser
//
//  Created by Preußer, Sophie on 15.10.19.
//  Copyright © 2019 Preußer, Sophie. All rights reserved.
//

class Complex {
    var re: Double
    var im: Double
    
    // Initializer
    init(re: Double, im: Double) {
        self.re = 0.0
        self.im = 0.0
    }
    
    func incrementBy(realAmount: Double) -> Void {
        re += realAmount
    }
    
    func incrementBy(imaginaryAmount: Double) -> Void {
        im += imaginaryAmount
    }
    
    func incrementBy(by complex: Complex) -> Void {
        
    }
    
    func multiplyBy(by complex: Complex) -> Void {
        
    }
    
    func rotateBy(by complex: Complex) -> Void {
        
    }
}
